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

namespace Irecycle
{
    public partial class TruckHome : BasePage
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Xn1GMO1JrhsfK2NLCoNLDFSc1k7mGKTHPA17ZBjc",
            BasePath = "https://irecycle-d8cc6.firebaseio.com/"
        };

        IFirebaseClient client;


        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            client = new FireSharp.FirebaseClient(config);
            string username = Session["FirstName"].ToString();
            Label1.Text = username;
            if (!IsPostBack)
            {


                getData(Label1.Text);

                DataColumn dc = new DataColumn();

                dc.ColumnName = "رقم الطلب";
                dc.DataType = typeof(int);
                dc.AutoIncrement = true;
                dc.AutoIncrementSeed = 1;
                dc.AutoIncrementStep = 1;

                dt.Columns.Add("الحالة");
                dt.Columns.Add("التاريخ");
                dt.Columns.Add("الكمية");
                dt.Columns.Add("نوع");
                dt.Columns.Add("الهاتف الشركة");
                dt.Columns.Add("موقع الشركة");
                dt.Columns.Add("شركة إعادة التدوير");
                dt.Columns.Add("الهاتف");
                dt.Columns.Add("الموقع");
                dt.Columns.Add("النوع");
                dt.Columns.Add("اسم المؤسسة");
                dt.Columns.Add(dc);
                gridViwe1.DataSource = dt;
                gridViwe1.DataBind();

                DataColumn dc1 = new DataColumn();
                dc1.ColumnName = "رقم";
                dc1.DataType = typeof(int);
                dc1.AutoIncrement = true;
                dc1.AutoIncrementSeed = 1;
                dc1.AutoIncrementStep = 1;

                dt1.Columns.Add("الحالة");
                dt1.Columns.Add("التاريخ");
                dt1.Columns.Add("الكمية");
                dt1.Columns.Add("نوع");
                dt1.Columns.Add("الهاتف الشركة");
                dt1.Columns.Add("موقع الشركة");
                dt1.Columns.Add("شركة إعادة التدوير");
                dt1.Columns.Add("الهاتف");
                dt1.Columns.Add("الموقع");
                dt1.Columns.Add("النوع");
                dt1.Columns.Add("اسم المؤسسة");
                dt1.Columns.Add(dc1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                ListData();
                ListTruck();

            }

        }
        protected async void ListTruck()
        {
            int i = 0;
            FirebaseResponse respos = await client.GetAsync("contrequest");
            CountRequest obj = respos.ResultAs<CountRequest>();
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
                    int t = 0;
                    FirebaseResponse respo = await client.GetAsync("counter");
                    Counter_class get = respo.ResultAs<Counter_class>();
                    int tcnt = Convert.ToInt32(get.cnt);
                    while (true)
                    {
                        if (t == tcnt)
                        {
                            break;
                        }
                        t++;
                        FirebaseResponse tresponse = await client.GetAsync("user/" + t);
                        Data tresult = tresponse.ResultAs<Data>();
                        string user1 = tresult.Username;
                        if (Label1.Text == user1)
                        {
                            FirebaseResponse response = await client.GetAsync("Requests/" + i);
                            Bader result = response.ResultAs<Bader>();
                            string user = tresult.TruckName;
                            if (user == name.Text && result.TruckRequest == "truck")
                            {
                                DataRow row1 = dt1.NewRow();
                                row1["اسم المؤسسة"] = result.EstablishName;
                                row1["الهاتف"] = result.Phone;
                                row1["الموقع"] = result.Address;
                                row1["النوع"] = result.RecycleType;
                                row1["شركة إعادة التدوير"] = result.CompanyName;
                                row1["موقع الشركة"] = result.CompanyAddress;
                                row1["الهاتف الشركة"] = result.CompanyPhone;
                                row1["التاريخ"] = result.Date;
                                row1["الحالة"] = result.RequestType;
                                row1["الكمية"] = result.Weight;
                                row1["نوع"] = result.Type;

                                dt1.Rows.Add(row1);
                                GridView1.DataSource = dt1;
                                GridView1.DataBind();
                            }
                        }
                    }
                }
                catch
                {

                }
            }
        }
        protected async void ListData()
        {
            int i = 0;
            FirebaseResponse respos = await client.GetAsync("contrequest");
            CountRequest obj = respos.ResultAs<CountRequest>();
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
                    if (result.TruckRequest == "notruck")
                    {
                        DataRow row = dt.NewRow();
                        row["اسم المؤسسة"] = result.EstablishName;
                        row["الهاتف"] = result.Phone;
                        row["الموقع"] = result.Address;
                        row["النوع"] = result.RecycleType;
                        row["شركة إعادة التدوير"] = result.CompanyName;
                        row["موقع الشركة"] = result.CompanyAddress;
                        row["الهاتف الشركة"] = result.CompanyPhone;
                        row["التاريخ"] = result.Date;
                        row["الحالة"] = result.RequestType;
                        row["الكمية"] = result.Weight;
                        row["نوع"] = result.Type;

                        dt.Rows.Add(row);
                        gridViwe1.DataSource = dt;
                        gridViwe1.DataBind();
                    }
                }
                catch
                {

                }
            }
        }


        protected async void getData(String username)
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
                Label2.Text= result.TruckName;
                
                try
                {
                    if (Label1.Text == user1)
                    {
                        name.Text = result.TruckName;
                        addr.Text = result.Address;
                        phon.Text = result.Phone;
                        emails.Text = result.CarType;

                        name1.Text = result.TruckName;
                        addr1.Text = result.Address;
                        phon1.Text = result.Phone;
                        emails1.Text = result.CarType;
                        date.Text = result.Date;
                        user.Text = result.Username;
                        pass.Text = this.Decrypt(result.Password);
                        repass.Text = this.Decrypt(result.Retypepassword);
                        state.Text = result.RegisterState;
                        rtype.Text = result.RegisterType;
                    }
                }

                catch
                {

                }
            }

        }

        protected async void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "accept")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViwe1.Rows[rowIndex];
                string date = row.Cells[11].Text;
                string name = row.Cells[10].Text;
                string retype = row.Cells[9].Text;
                string weight = row.Cells[6].Text;
                string type = row.Cells[5].Text;

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
                        string add = result.Address;
                        string dates = result.Date;
                        string cname = result.CompanyName;
                        string cphone = result.CompanyPhone;
                        string caddr = result.CompanyAddress;
                        string ename = result.EstablishName;
                        string truckr = result.TruckRequest;
                        string ph = result.Phone;
                        string rt = result.RecycleType;
                        string reqt = result.RequestType;
                        string tname = result.TruckName;
                        string tpho = result.TruckPhone;
                        string types = result.Type;
                        string user = result.Username;
                        string weigh = result.Weight;
                        string rdate = result.RequestTime;
                        string sdate = result.SupmitTime;
                        string url = result.Imageurl;
                        string accept = result.Accept;
                        if (name == ename && date == dates && type == types && retype == rt && weight == weigh)
                        {
                            var bader = new Bader
                            {
                                EstablishName = name,
                                Phone = ph,
                                Address = add,
                                RecycleType = retype,
                                Weight = weight,
                                Type = type,
                                CompanyName = cname,
                                CompanyPhone = cphone,
                                CompanyAddress = caddr,
                                TruckName = name1.Text,
                                TruckPhone = phon1.Text,
                                TruckRequest = "notruck",
                                Username = user,
                                Date = date,
                                RequestTime = rdate,
                                SupmitTime = sdate,
                                Imageurl = url,
                                Accept = accept,
                                RequestType = "قيد الاستلام"

                            };

                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                            Bader result2 = response2.ResultAs<Bader>();
                            Response.Redirect("TruckDefault.aspx", false);
                        }
                    }
                    catch
                    {

                    }
                }
            }
            if (e.CommandName == "ok")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViwe1.Rows[rowIndex];
                string date = row.Cells[11].Text;
                string name = row.Cells[10].Text;
                string retype = row.Cells[9].Text;
                string weight = row.Cells[6].Text;
                string type = row.Cells[5].Text;

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
                        string add = result.Address;
                        string dates = result.Date;
                        string cname = result.CompanyName;
                        string cphone = result.CompanyPhone;
                        string caddr = result.CompanyAddress;
                        string ename = result.EstablishName;
                        string truckr = "truck";
                        string ph = result.Phone;
                        string rt = result.RecycleType;
                        string reqt = result.RequestType;
                        string reqttime = result.RequestTime;
                        string suptime = result.SupmitTime;
                        string tname = result.TruckName;
                        string tpho = result.TruckPhone;
                        string types = result.Type;
                        string user = result.Username;
                        string weigh = result.Weight;
                        string url = result.Imageurl;
                        string accept = result.Accept;
                        if (name == ename && date == dates && type == types && retype == rt && weight == weigh)
                        {
                            var bader = new Bader
                            {
                                EstablishName = name,
                                Phone = ph,
                                Address = add,
                                RecycleType = retype,
                                Weight = weight,
                                Type = type,
                                CompanyName = cname,
                                CompanyPhone = cphone,
                                CompanyAddress = caddr,
                                TruckName = tname,
                                TruckPhone = tpho,
                                TruckRequest = truckr,
                                RequestTime = reqttime,
                                SupmitTime = suptime,
                                Username = user,
                                Date = date,
                                Imageurl = url,
                                Accept=accept,
                                RequestType = "تم الاستلام"

                            };

                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                            Bader result2 = response2.ResultAs<Bader>();
                            Response.Redirect("TruckDefault.aspx", false);
                        }
                    }
                    catch
                    {

                    }
                }
            }
            if (e.CommandName == "ignor")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViwe1.Rows[rowIndex];
                if (row.RowType == DataControlRowType.DataRow)
                {
                    var ok = ((Button)row.FindControl("ok"));
                    var acc = ((Button)row.FindControl("accept"));
                    if (ok != null && acc != null)
                    {
                        ((Button)ok).Visible = false;
                        ((Button)acc).Visible = false;
                    }
                }
            }
        }

            protected void Update_Details(object sender, EventArgs e)
        {
            getData(Label1.Text);

            name1.Visible = true;
            name.Visible = false;
            phon.Visible = false;
            phon1.Visible = true;
            addr.Visible = false;
            addr1.Visible = true;
            emails.Visible = false;
            emails1.Visible = true;
            date.Visible = true;
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
                TruckName = name1.Text.ToString(),
                CarType = emails1.Text,
                Phone = phon1.Text,
                Address = addr1.Text,
                Username = Label1.Text,
                Date = date.Text,
                Password = this.Encrypt(pass.Text.Trim()),
                Retypepassword = this.Encrypt(repass.Text.Trim()),
                RegisterState = state.Text,
                RegisterType = rtype.Text
            };

                FirebaseResponse response = await client.UpdateAsync("user/" + i, data);
                Data result = response.ResultAs<Data>();

                name1.Visible = false;
                name.Visible = true;
                phon.Visible = true;
                phon1.Visible = false;
                addr.Visible = true;
                addr1.Visible = false;
                emails.Visible = true;
                emails1.Visible = false;
                date.Visible = false;
                bu1.Visible = true;
                bu2.Visible = false;

                getData(Label1.Text);
                    }
                }
                catch
                {

                }
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