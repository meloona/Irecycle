using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System.Data;
using System.Security.Cryptography;
using System.IO;
using System.Text;

namespace Irecycle
{
    public partial class AdminHome : BasePage
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Xn1GMO1JrhsfK2NLCoNLDFSc1k7mGKTHPA17ZBjc",
            BasePath = "https://irecycle-d8cc6.firebaseio.com/"
        };

        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);

            if (!IsPostBack)
            {
                
                DataColumn dc = new DataColumn();
                dc.ColumnName = "رقم الطلب";
                dc.DataType = typeof(int);
                dc.AutoIncrement = true;
                dc.AutoIncrementSeed = 1;
                dc.AutoIncrementStep = 1;

                dt.Columns.Add("الحالة");
                dt.Columns.Add("التاريخ");
                dt.Columns.Add("وقت اتمام الطلب");
                dt.Columns.Add("شاحنات");
                dt.Columns.Add("وقت استلام الطلب");
                dt.Columns.Add("شركة إعادة التدوير");
                dt.Columns.Add("المخلفات");
                dt.Columns.Add("المؤسسة");
                dt.Columns.Add(dc);                
                GridView2.DataSource = dt;
                GridView2.DataBind();

              DataColumn dc1 = new DataColumn();
                dc1.ColumnName = "رقم";
                dc1.DataType = typeof(int);
                dc1.AutoIncrement = true;
                dc1.AutoIncrementSeed = 1;
                dc1.AutoIncrementStep = 1;

                dt1.Columns.Add("الحالة");
                dt1.Columns.Add("الموقع");
                dt1.Columns.Add("البريد");
                dt1.Columns.Add("الهاتف");
                dt1.Columns.Add("نوع");
                dt1.Columns.Add("اسم");
                dt1.Columns.Add("تاريخ");
                dt1.Columns.Add(dc1);
  
                GridView1.DataSource = dt1;
                GridView1.DataBind();

                dt2.Columns.Add("اسم");
                dt2.Columns.Add("ورق");
                dt2.Columns.Add("إطارات");
                dt2.Columns.Add("ألمونيوم");
                dt2.Columns.Add("زجاج");
                dt2.Columns.Add("حديد");
                dt2.Columns.Add("كرتون");
                dt2.Columns.Add("بلاستيك");
                dt2.Columns.Add("أخرى");
                dt2.Columns.Add("قيمة");

                GridView3.DataSource = dt2;
                GridView3.DataBind();

                ListData();
                ListRegister();
                ListPoints();
            }
        }

        protected async void ListData()
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
                    DataRow row = dt.NewRow();
                    row["المؤسسة"] = result.EstablishName;
                    row["المخلفات"] = result.RecycleType;
                    row["شركة إعادة التدوير"] = result.CompanyName;
                    row["وقت استلام الطلب"] = result.RequestTime;
                    row["وقت اتمام الطلب"] = result.SupmitTime;
                    row["شاحنات"] = result.TruckName;
                    row["التاريخ"] = result.Date;
                    row["الحالة"] = result.RequestType;


                    dt.Rows.Add(row);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
                catch
                {

                }
            }

        }

        protected async void ListPoints()
        {
            int i = 0;
            FirebaseResponse respo = await client.GetAsync("Pointcont");
            Pointcont get = respo.ResultAs<Pointcont>();
            int cnt = Convert.ToInt32(get.pcnt);
            while (true)
            {
                if (i == cnt)
                {
                    break;
                }
                i++;
                try
                {
                    Double p = 0.050;
                    Double c = 0.060;
                    FirebaseResponse response = await client.GetAsync("Point/" + i);
                    Point result = response.ResultAs<Point>();
                    Double total = (result.ورق * p) + (result.إطارات) + (result.ألمونيوم) + (result.زجاج) + (result.حديد) + (result.كرتون * c) + (result.بلاستك * p) + (result.أخرى);
                    DataRow rows = dt2.NewRow();
                    rows["ورق"] = result.ورق;
                    rows["اسم"] = result.Username;
                    rows["إطارات"] = result.إطارات;
                    rows["ألمونيوم"] = result.ألمونيوم;
                    rows["زجاج"] = result.زجاج;
                    rows["حديد"] = result.حديد;
                    rows["كرتون"] = result.كرتون;
                    rows["بلاستيك"] = result.بلاستك;
                    rows["أخرى"] = result.أخرى;
                    rows["قيمة"] = total;
                    dt2.Rows.Add(rows);
                    GridView3.DataSource = dt2;
                    GridView3.DataBind();
                }
                catch
                {

                }
            }
        }

        protected async void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ok")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                GridViewRow row = GridView1.Rows[rowIndex];
                string country = row.Cells[6].Text;
                string email = row.Cells[3].Text;

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
                    try
                    {
                        FirebaseResponse response = await client.GetAsync("user/" + i);
                        Data result = response.ResultAs<Data>();
                        string cname = result.CompanyName;
                        string tname = result.TruckName;
                        string add = result.Address;
                        string em = result.Email;
                        string user = result.Username;
                        string date = result.Date;
                        string ph = result.Phone;
                        string retyp = result.Recycletype;
                        string pass = this.Decrypt(result.Password.Trim());
                        string rg = result.RegisterType;
                        string rgs = result.RegisterState;
                        string car = result.CarType;
                        if (country == result.CompanyName)
                        {
                            var data = new Data
                            {
                                CompanyName = country,
                                Email = email,
                                Phone = ph,
                                Address = add,
                                Username = user,
                                Date = date,
                                Password = this.Encrypt(pass.Trim()),
                                Retypepassword = this.Encrypt(pass.Trim()),
                                Recycletype = retyp,
                                RegisterState = "تم الإتفاق",
                                RegisterType = rg

                            };

                            FirebaseResponse response1 = await client.UpdateAsync("user/" + i, data);
                            Data result1 = response1.ResultAs<Data>();
                            Response.Redirect("AdminDefault.aspx", false);
                        }
                        if (country == result.TruckName)
                        {

                            var data = new Data
                            {
                                TruckName = tname,
                                CarType = car,
                                Phone = ph,
                                Address = add,
                                Username = user,
                                Date = date,
                                Password = this.Encrypt(pass.Trim()),
                                Retypepassword = this.Encrypt(pass.Trim()),
                                RegisterState = "تم الإتفاق",
                                RegisterType = rg
                            };

                            FirebaseResponse response2 = await client.UpdateAsync("user/" + i, data);
                            Data result2 = response2.ResultAs<Data>();
                            Response.Redirect("AdminDefault.aspx", false);
                        }
                        
                    }
                    catch
                    {

                    }
                }
            }

        }

            protected async void ListRegister()
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
                try
                    {
                        FirebaseResponse response = await client.GetAsync("user/"+i);
                        Data result = response.ResultAs<Data>();
                        DataRow rows = dt1.NewRow();
                        if (result.RegisterType == "Company")
                        {
                        
                            rows["تاريخ"] = result.Date;
                            rows["اسم"] = result.CompanyName;              
                            rows["نوع"] = result.CarType;
                            rows["الهاتف"] = result.Phone;
                            rows["البريد"] = result.Email;
                            rows["الموقع"] = result.Address;
                            rows["الحالة"] = result.RegisterState;

                            dt1.Rows.Add(rows);
                            GridView1.DataSource = dt1;
                            GridView1.DataBind();
                        }
                        if (result.RegisterType == "Truck")
                        {
                            rows["تاريخ"] = result.Date;
                            rows["اسم"] = result.TruckName;
                            rows["نوع"] = result.CarType;
                            rows["الهاتف"] = result.Phone;
                            rows["البريد"] = result.Email;
                            rows["الموقع"] = result.Address;
                            rows["الحالة"] = result.RegisterState;

                            dt1.Rows.Add(rows);
                            GridView1.DataSource = dt1;
                            GridView1.DataBind();
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