using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Irecycle
{
    public partial class Dialog3 :BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}