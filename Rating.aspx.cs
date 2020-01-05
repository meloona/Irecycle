using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace Irecycle
{
    public partial class Rating : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Xn1GMO1JrhsfK2NLCoNLDFSc1k7mGKTHPA17ZBjc",
            BasePath = "https://irecycle-d8cc6.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);
            string username = Session["username"].ToString();
            string cname = Session["cname"].ToString();
            string type = Session["type"].ToString();
            string weight = Session["weight"].ToString();
            string date = Session["date"].ToString();
            user1.Text = username;
            user2.Text = cname;
            user3.Text = type;
            user4.Text = weight;
            user5.Text = date;
            //lab2.Text = "name is: "+username+"\n"+cname;
        }
        protected async void Button1_Click(object sender, EventArgs e)
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
                    if (user1.Text == user && user3.Text == rt && user2.Text == cname && user4.Text == weigh && user5.Text==dates)
                    {
                        var bader = new Bader
                        {
                            EstablishName = ename,
                            Phone = ph,
                            Address = add,
                            RecycleType = rt,
                            Weight = weigh,
                            Type = types,
                            CompanyName = cname,
                            CompanyPhone = cphone,
                            CompanyAddress = caddr,
                            TruckName = tname,
                            TruckPhone = tpho,
                            TruckRequest = truckr,
                            Username = user,
                            Date = dates,
                            RequestTime = rdate,
                            Imageurl = url,
                            Accept = accept,
                            SupmitTime = sdate,
                            RatePoint= Rating1.CurrentRating.ToString(),
                            Comment= TextArea1.Value,
                            RequestType =reqt

                        };
                        FirebaseResponse response2 = await client.UpdateAsync("Requests/" + i, bader);
                        Bader result2 = response2.ResultAs<Bader>();
                        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "self.close();", true);
                    }
                }
                catch
                {

                }
            }
        }
    }
}