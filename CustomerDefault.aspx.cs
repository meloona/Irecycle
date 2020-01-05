using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Data;
using System.Windows.Forms;
using Firebase.Storage;

namespace Irecycle
{
    public partial class CustomerHome : BasePage
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Xn1GMO1JrhsfK2NLCoNLDFSc1k7mGKTHPA17ZBjc",
            BasePath = "https://irecycle-d8cc6.firebaseio.com/"
        };
        DataTable dt = new DataTable();
        IFirebaseClient client;
        
     

        protected  void Page_Load(object sender, EventArgs e)
        {

            string username = Session["FirstName"].ToString();
            Label1.Text = username;

            client = new FireSharp.FirebaseClient(config);
              

            if (!IsPostBack)
            {
           
                DataColumn dco = new DataColumn();
                dco.ColumnName = "رقم الطلب";
                dco.DataType = typeof(int);
                dco.AutoIncrement = true;
                dco.AutoIncrementSeed = 1;
                dco.AutoIncrementStep = 1;


                dt.Columns.Add("اسم المؤسسة");
                dt.Columns.Add(dco);
                dt.Columns.Add("الهاتف");
                dt.Columns.Add("(kg)الكمية");
                dt.Columns.Add("النوع");
                dt.Columns.Add("التاريخ");
                dt.Columns.Add("الحالة");
                GridView1.DataSource = dt;
                GridView1.DataBind();

                ListData(username);
                GetData(username);
            }
            
        }

        protected async void ListData(string username)
        {
            int i = 0;
            FirebaseResponse respo = await client.GetAsync("contrequest");
            CountRequest obj = respo.ResultAs<CountRequest>();
            int cnt = Convert.ToInt32(obj.contr);
            while (true)
            {
                if (i == cnt)
                {
                    break;
                }
                i++;
                try
                {
                    FirebaseResponse response = await client.GetAsync("Requests/" + i);
                    Bader result = response.ResultAs<Bader>();
                    if (result.Username == username)
                    {
                        DataRow row = dt.NewRow();
                        row["اسم المؤسسة"] = result.CompanyName;
                        row["الهاتف"] = result.CompanyPhone;
                        row["(kg)الكمية"] = result.Weight;
                        row["النوع"] = result.RecycleType;
                        row["التاريخ"] = result.Date;
                        row["الحالة"] = result.RequestType;

                        dt.Rows.Add(row);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }                   
                }
                catch
                {

                }
            }
        }


        protected async void GetData(string username)
        {
            int i = 0;
            FirebaseResponse respo = await client.GetAsync("counter");
            Counter_class get = respo.ResultAs<Counter_class>();
            int cnt = Convert.ToInt32(get.cnt);
            while (true)
            {
                if (i == cnt)
                {
                    break;
                }
                i++;
                FirebaseResponse response = await client.GetAsync("user/" + i);
                Data result = response.ResultAs<Data>();
                string user1 = result.Username;
                try
                {
                    if (Label1.Text == user1)
                    {
                        int s = 0;
                        FirebaseResponse prespo = await client.GetAsync("Pointcont");
                        Pointcont pget = prespo.ResultAs<Pointcont>();
                        int pcnt = Convert.ToInt32(pget.pcnt);
                        while (true)
                        {
                            if (s == pcnt)
                            {
                                break;
                            }
                            s++;
                            try
                            {
                                FirebaseResponse presp = await client.GetAsync("Point/" + s);
                                Point point1 = presp.ResultAs<Point>();

                                int paper = point1.ورق;
                                int glass = point1.زجاج;
                                int cartoon = point1.كرتون;
                                int others = point1.أخرى;
                                int palstic = point1.بلاستك;
                                int toors = point1.إطارات;
                                int alum = point1.ألمونيوم;
                                int me = point1.حديد;
                                int all = paper + glass + cartoon + others + palstic + toors + alum + me;
                                name.Text = result.EstablishName;
                                addr.Text = result.Address;
                                phon.Text = result.Phone;
                                emails.Text = result.Email;
                                types.Text = all.ToString();

                                name1.Text = result.EstablishName;
                                addr1.Text = result.Address;
                                phon1.Text = result.Phone;
                                emails1.Text = result.Email;
                                date.Text = result.Date;
                                user.Text = result.Username;
                                pass.Text = this.Decrypt(result.Password);
                                repass.Text = this.Decrypt(result.Retypepassword);
                                rtype.Text = result.RegisterType;
                            }
                            catch
                            {

                            }
                        }
                    }
                }
                catch
                {

                }
            }
        }


        protected async void Register_Click(object sender, EventArgs e)
        {
            FirebaseResponse respo = await client.GetAsync("contrequest");
            CountRequest get = respo.ResultAs<CountRequest>();
            string cn = (Convert.ToInt32(get.contr) + 1).ToString();
            if (FileUpload1.HasFile)
            {
                string filepath = Path.Combine(Server.MapPath("~/requestimg"), FileUpload1.FileName);
                FileUpload1.SaveAs(filepath);
                var stream = File.Open(filepath, FileMode.Open);
                var task = new FirebaseStorage("irecycle-b0312.appspot.com").Child(FileUpload1.FileName).PutAsync(stream);
                task.Progress.ProgressChanged += (s, c) => Console.WriteLine($"Progress:{c.Percentage} %");
                var dowenloadurl = await task;

                var bader = new Bader
                {

                    EstablishName = name.Text,
                    Phone = phon.Text,
                    Address = addr.Text,
                    RecycleType = RadioButtonList1.SelectedItem.Value,
                    Weight = weight.Text,
                    Type = type.SelectedItem.Value,
                    CompanyName = "",
                    CompanyPhone = "",
                    CompanyAddress = "",
                    TruckName = "",
                    TruckPhone = "",
                    TruckRequest = "",
                    Username = Label1.Text,
                    Date = DateTime.Now.ToString("yyyy-MM-dd"),
                    RequestTime = "",
                    SupmitTime = "",
                    Imageurl = dowenloadurl,
                    RequestType = "قيد المراجعة",
                    Accept=""
                };

                SetResponse response = await client.SetAsync("Requests/" + cn, bader);
                Bader result = response.ResultAs<Bader>();

                var obj = new CountRequest
                {
                    contr = cn,
                };
                SetResponse response1 = await client.SetAsync("contrequest", obj);

                // divexms.Visible = true;
                RadioButtonList1.ClearSelection();
                type.ClearSelection();
                weight.Text = "";
                MessageBox.Show(GetLocalResourceObject("LabelResource18").ToString());
                Response.Redirect("CustomerDefault.aspx", false);
            }

        }

        protected void Update_Details(object sender, EventArgs e)
        {

            name1.Visible = true;
            name.Visible = false;
            phon.Visible = false;
            phon1.Visible = true;
            addr.Visible = false;
            addr1.Visible = true;
            emails.Visible = false;
            emails1.Visible = true;  
            bu1.Visible = false;
            bu2.Visible = true;
        }
        protected async void Updat_Details(object sender, EventArgs e)
        {
            int i = 0;
            FirebaseResponse respo = await client.GetAsync("counter");
            Counter_class get = respo.ResultAs<Counter_class>();
            int cnt = Convert.ToInt32(get.cnt);
            while (true)
            {
                if (i == cnt)
                {
                    break;
                }
                i++;
                FirebaseResponse respon = await client.GetAsync("user/" + i);
                Data result1 = respon.ResultAs<Data>();
                string user1 = result1.Username;
                try
                {
                    if (Label1.Text == user1)
                    {

                        var data = new Data
                        {
                            EstablishName = name1.Text,
                            Email = emails1.Text,
                            Phone = phon1.Text,
                            Address = addr1.Text,
                            Username = Label1.Text,
                            Date=date.Text,
                            Password = this.Encrypt(pass.Text.Trim()),
                            Retypepassword = this.Encrypt(repass.Text.Trim()),
                            RegisterType = rtype.Text

                        };

                        FirebaseResponse response = await client.UpdateAsync("user/" +i, data);
                        Data result = response.ResultAs<Data>();

                        name1.Visible = false;
                        name.Visible = true;
                        phon.Visible = true;
                        phon1.Visible = false;
                        addr.Visible = true;
                        addr1.Visible = false;
                        emails.Visible = true;                    
                        emails1.Visible = false;
                        types.Visible = true;
                        bu1.Visible = true;
                        bu2.Visible = false;
                        GetData(Label1.Text);
                    }
                }
                catch
                {

                }
            }
        }

        protected  void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Rating")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = GridView1.Rows[rowIndex];
                string cname = row.Cells[6].Text;
                string weight = row.Cells[5].Text;
                string type = row.Cells[4].Text;
                string date = row.Cells[2].Text;
                string user = Label1.Text;
                Session["username"] = user;
                Session["cname"] = cname;
                Session["type"] = type;
                Session["weight"] = weight;
                Session["date"] = date;
                string url = "Rating.aspx"; 
                string s = "window.open('" + url + "', 'popup_window', 'height=180,width=280,left=500,top=150,resizable=No,scrollbars=No,toolbar=no,menubar=no,location=no,directories=no, status=No');";
                ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);

               
               
            }

        }

        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }
    }
}