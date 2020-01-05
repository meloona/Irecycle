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
    public partial class Home: BasePage
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
            //if (client != null)
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('"+message+"');", true);
            //}
        }

        protected void company_register(object sender, EventArgs e)
        {
            Response.Redirect("CompanyRegister.aspx");
        }

        protected void estab_register(object sender, EventArgs e)
        {
             Response.Redirect("EstablishRegister.aspx");
        }
        protected void trucks_register(object sender, EventArgs e)
        {
            Response.Redirect("TrucksRegister.aspx");
        }
    }
}