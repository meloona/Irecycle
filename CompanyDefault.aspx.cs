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
    public partial class CompanyHome : BasePage
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

                dt.Columns.Add("اسم المؤسسة");
                dt.Columns.Add(dc);
                dt.Columns.Add("التاريخ");
                dt.Columns.Add("النوع");
                dt.Columns.Add("الموقع");
                dt.Columns.Add("الهاتف");
                dt.Columns.Add("الكمية");
                dt.Columns.Add("نوع");
                dt.Columns.Add("الشاحنات");
                dt.Columns.Add("الهاتف الشاحنة");
                dt.Columns.Add("الحالة");
                dt.Columns.Add("الصورة");
                gridViwe1.DataSource = dt;
                gridViwe1.DataBind();
                gridViwe1.DataSource = dt;
                gridViwe1.DataBind();

                DataColumn dc1 = new DataColumn();
                dc1.ColumnName = "رقم";
                dc1.DataType = typeof(int);
                dc1.AutoIncrement = true;
                dc1.AutoIncrementSeed = 1;
                dc1.AutoIncrementStep = 1;

                dt1.Columns.Add("اسم المؤسسة");
                dt1.Columns.Add(dc1);
                dt1.Columns.Add("التاريخ");
                dt1.Columns.Add("النوع");
                dt1.Columns.Add("الموقع");
                dt1.Columns.Add("الهاتف");
                dt1.Columns.Add("الكمية");
                dt1.Columns.Add("نوع");
                dt1.Columns.Add("الشاحنات");
                dt1.Columns.Add("الهاتف الشاحنة");
                dt1.Columns.Add("الحالة");
                dt1.Columns.Add("الصورة");

                gridViwe2.DataSource = dt1;
                gridViwe2.DataBind();
                ListData();
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
                var data = new Data();
                FirebaseResponse response = await client.GetAsync("user/" +i);
                Data result = response.ResultAs<Data>();
                string user1 = result.Username;
                Label2.Text = result.Recycletype;
                Label3.Text = result.CompanyName;
                
                try
                {
                    if (Label1.Text == user1)
                    {
                        name.Text = result.CompanyName;
                        addr.Text = result.Address;
                        phon.Text = result.Phone;
                        emails.Text = result.Email;
                        types.Text = result.Recycletype;

                        name1.Text = result.CompanyName;
                        addr1.Text = result.Address;
                        phon1.Text = result.Phone;
                        emails1.Text = result.Email;
                        date.Text = result.Date;
                        types1.SelectedValue = result.Recycletype;
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
                    int c = 0;
                    FirebaseResponse respo = await client.GetAsync("counter");
                    Counter_class get = respo.ResultAs<Counter_class>();
                    int ccnt = Convert.ToInt32(get.cnt);
                    while (true)
                    {
                        if (c == ccnt)
                        {
                            break;
                        }
                        c++;
                        var data = new Data();
                        FirebaseResponse cresponse = await client.GetAsync("user/" + c);
                        Data cresult = cresponse.ResultAs<Data>();
                        string user1 = cresult.Username;
                        string types = cresult.Recycletype;
                        string names = cresult.CompanyName;
                        
                        if (user1 == Label1.Text)
                        {
                            FirebaseResponse response = await client.GetAsync("Requests/" + i);
                            Bader result = response.ResultAs<Bader>();
                            // if (result.RecycleType == types && result.RequestType != "تم التسليم")
                            if (result.RequestType != "تم التسليم" )
                            {
                                if (result.RequestType != "تم التسليم" && result.Accept!="yes")
                                {
                                    DataRow row = dt.NewRow();
                                    row["اسم المؤسسة"] = result.EstablishName;
                                    row["الهاتف"] = result.Phone;
                                    row["الموقع"] = result.Address;
                                    row["الكمية"] = result.Weight;
                                    row["النوع"] = result.RecycleType;
                                    row["نوع"] = result.Type;
                                    row["التاريخ"] = result.Date;
                                    row["الشاحنات"] = result.TruckName;
                                    row["الهاتف الشاحنة"] = result.TruckPhone;
                                    row["الحالة"] = result.RequestType;
                                    row["الصورة"] = result.Imageurl;

                                    dt.Rows.Add(row);
                                    gridViwe1.DataSource = dt;
                                    gridViwe1.DataBind();
                                }
                                if (result.CompanyName == names && result.RequestType != "تم التسليم" && result.Accept == "yes")
                                {
                                    DataRow row = dt.NewRow();
                                    row["اسم المؤسسة"] = result.EstablishName;
                                    row["الهاتف"] = result.Phone;
                                    row["الموقع"] = result.Address;
                                    row["الكمية"] = result.Weight;
                                    row["النوع"] = result.RecycleType;
                                    row["نوع"] = result.Type;
                                    row["التاريخ"] = result.Date;
                                    row["الشاحنات"] = result.TruckName;
                                    row["الهاتف الشاحنة"] = result.TruckPhone;
                                    row["الحالة"] = result.RequestType;
                                    row["الصورة"] = result.Imageurl;

                                    dt.Rows.Add(row);
                                    gridViwe1.DataSource = dt;
                                    gridViwe1.DataBind();
                                }
                                 
                            }
                          //  if (result.RecycleType == types && result.CompanyName == names && result.RequestType == "تم التسليم")
                          if ( result.CompanyName == names && result.RequestType == "تم التسليم")
                            {

                                DataRow rows = dt1.NewRow();
                                rows["اسم المؤسسة"] = result.EstablishName;
                                rows["الهاتف"] = result.Phone;
                                rows["الموقع"] = result.Address;
                                rows["الكمية"] = result.Weight;
                                rows["النوع"] = result.RecycleType;
                                rows["نوع"] = result.Type;
                                rows["التاريخ"] = result.Date;
                                rows["الشاحنات"] = result.TruckName;
                                rows["الهاتف الشاحنة"] = result.TruckPhone;
                                rows["الحالة"] = result.RequestType;
                                rows["الصورة"] = result.Imageurl;

                                dt1.Rows.Add(rows);
                                gridViwe2.DataSource = dt1;
                                gridViwe2.DataBind();
                            }
                        }
                    }
                }
                catch
                {

                }
            }
        }

        protected  void Update_Details(object sender, EventArgs e)
        {
            //getData(Label1.Text);

            name1.Visible = true;
            name.Visible = false;
            phon.Visible = false;
            phon1.Visible = true;
            addr.Visible = false;
            addr1.Visible = true;
            emails.Visible = false;
            emails1.Visible = true;
            date.Visible = true;
            types.Visible = false;
            types1.Visible = true;
            bu1.Visible = false;
            bu2.Visible = true;
        }

        protected async void Updat_Details(object sender, EventArgs e)
        {
            string message = "";
            foreach (ListItem item in types1.Items)
            {
                if (item.Selected)
                {
                    message += item.Value + " ";
                }
            }
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
                            CompanyName = name1.Text.ToString(),
                            Email = emails1.Text,
                            Phone = phon1.Text,
                            Address = addr1.Text,
                            Username = Label1.Text,
                            Date = date.Text,
                            Password = this.Encrypt(pass.Text.Trim()),
                            Retypepassword = this.Encrypt(repass.Text.Trim()),
                            Recycletype = message,
                            RegisterState = state.Text,
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
                        date.Visible = false;
                        types.Visible = true;
                        types1.Visible = false;
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


        protected async void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "accept")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViwe1.Rows[rowIndex];
                string date = row.Cells[13].Text;
                string name = row.Cells[12].Text;
                string retype = row.Cells[11].Text;
                string weight = row.Cells[8].Text;
                string type = row.Cells[7].Text;

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
                        string ename = result.EstablishName;
                        string ph = result.Phone;
                        string rt = result.RecycleType;
                        string reqt = result.RequestType;
                        string tname = result.TruckName;
                        string tpho = result.TruckPhone;
                        string types = result.Type;
                        string user = result.Username;
                        string weigh = result.Weight;
                        string url = result.Imageurl;
                        string accept = result.Accept;

                    //    if (name == ename && date == dates && type == types && retype == rt && weight == weigh)
                        if (name == ename && date == dates && type == types && weight == weigh)
                        {
                            var bader = new Bader
                            {
                                EstablishName = name,
                                Phone = ph,
                                Address = add,
                                RecycleType = retype,
                                Weight = weight,
                                Type = type,
                                CompanyName = name1.Text,
                                CompanyPhone = phon1.Text,
                                CompanyAddress = addr1.Text,
                                TruckName = "",
                                TruckPhone = "",
                                TruckRequest = "",
                                Username = user,
                                Date = date,
                                RequestTime = DateTime.Now.ToShortTimeString(),
                                SupmitTime = "",
                                Imageurl = url,
                                Accept = "yes",
                                RequestType = "قيد التنفيذ"

                            };

                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                            Bader result2 = response2.ResultAs<Bader>();
                            Response.Redirect("CompanyDefault.aspx", false);
                        }
                    }
                    catch
                    {

                    }

                }
            }
            if (e.CommandName == "request")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridViwe1.Rows[rowIndex];
                string date = row.Cells[13].Text;
                string name = row.Cells[12].Text;
                string retype = row.Cells[11].Text;
                string weight = row.Cells[8].Text;
                string type = row.Cells[7].Text;

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
                        //if (name == ename && date == dates && type == types && retype == rt && weight == weigh)
                        if (name == ename && date == dates && type == types && weight == weigh)
                        {
                            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " + name + "\\nCountry: " + date + "');", true);
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
                                TruckRequest = "notruck",
                                Username = user,
                                Date = date,
                                RequestTime = rdate,
                                SupmitTime = sdate,
                                Imageurl = url,
                                Accept =accept,
                                RequestType = "قيد التنفيذ"

                            };

                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                            Bader result2 = response2.ResultAs<Bader>();
                            Response.Redirect("CompanyDefault.aspx", false);
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
                string date = row.Cells[13].Text;
                string name = row.Cells[12].Text;
                string retype = row.Cells[11].Text;
                string weight = row.Cells[8].Text;
                string type = row.Cells[7].Text;

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

                        // if (name == ename && date == dates && type == types && retype == rt && weight == weigh)
                        if (name == ename && date == dates && type == types && weight == weigh)
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
                                Username = user,
                                Date = date,
                                RequestTime = rdate,
                                Imageurl=url,
                                Accept = accept,
                                SupmitTime = DateTime.Now.ToShortTimeString(),
                                RequestType = "تم التسليم"

                            };

                            if (retype == "ورق")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {

                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper + (Convert.ToInt32(weigh)),
                                                ألمونيوم = alum,
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass,
                                                كرتون = cartoon,
                                                إطارات = toors,
                                                أخرى = others
                                            };


                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();

                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }

                            }

                            if (retype == "ألمونيوم")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {

                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum + (Convert.ToInt32(weigh)),
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass,
                                                كرتون = cartoon,
                                                إطارات = toors,
                                                أخرى = others
                                            };

                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();

                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }

                            }
                            if (retype == "بلاستك")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {

                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum + (Convert.ToInt32(weigh)),
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass,
                                                كرتون = cartoon,
                                                إطارات = toors,
                                                أخرى = others
                                            };

                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();

                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }
                            }
                            if (retype == "حديد")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {

                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum,
                                                بلاستك = palstic,
                                                حديد = me + (Convert.ToInt32(weigh)),
                                                زجاج = glass,
                                                كرتون = cartoon,
                                                إطارات = toors,
                                                أخرى = others
                                            };
                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();
                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }
                            }

                            if (rt == "زجاج")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {
                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum,
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass + (Convert.ToInt32(weigh)),
                                                كرتون = cartoon,
                                                إطارات = toors,
                                                أخرى = others
                                            };
                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();
                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }
                            }

                            if (retype == "كرتون")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {
                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum,
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass,
                                                كرتون = cartoon + (Convert.ToInt32(weigh)),
                                                إطارات = toors,
                                                أخرى = others
                                            };
                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();
                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }

                            }

                            if (retype == "إطارات")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {
                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum,
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass,
                                                كرتون = cartoon,
                                                إطارات = toors + (Convert.ToInt32(weigh)),
                                                أخرى = others
                                            };
                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();
                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }
                            }
                            if (retype == "أخرى")
                            {
                                int p = 0;
                                FirebaseResponse prespo = await client.GetAsync("Pointcont");
                                Pointcont get = prespo.ResultAs<Pointcont>();
                                int pcnt = Convert.ToInt32(get.pcnt);
                                while (true)
                                {
                                    if (p == pcnt)
                                    {
                                        break;
                                    }
                                    p++;
                                    try
                                    {
                                        FirebaseResponse presponse = await client.GetAsync("Point/" + p);
                                        Point point1 = presponse.ResultAs<Point>();
                                        string puser = point1.Username;
                                        int paper = point1.ورق;
                                        int glass = point1.زجاج;
                                        int cartoon = point1.كرتون;
                                        int others = point1.أخرى;
                                        int palstic = point1.بلاستك;
                                        int toors = point1.إطارات;
                                        int alum = point1.ألمونيوم;
                                        int me = point1.حديد;
                                        if (puser == user)
                                        {
                                            var points = new Point
                                            {
                                                Username = user,
                                                ورق = paper,
                                                ألمونيوم = alum,
                                                بلاستك = palstic,
                                                حديد = me,
                                                زجاج = glass,
                                                كرتون = cartoon,
                                                إطارات = toors,
                                                أخرى = others + (Convert.ToInt32(weigh))
                                            };
                                            FirebaseResponse respons = await client.UpdateAsync("Point/" + p, points);
                                            Point point = respons.ResultAs<Point>();
                                            FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                                            Bader result2 = response2.ResultAs<Bader>();
                                        }
                                    }
                                    catch
                                    {

                                    }
                                }

                            }


                            Response.Redirect("CompanyDefault.aspx", false);
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
                        var control = ((Button)row.FindControl("request"));
                        var ok = ((Button)row.FindControl("ok"));
                        var acc = ((Button)row.FindControl("accept"));
                        if (control != null&& ok != null&& acc != null)
                        {
                            ((Button)control).Visible = false;
                            ((Button)ok).Visible = false;
                            ((Button)acc).Visible = false;
                        }
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