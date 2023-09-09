using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FUll_Website_Project
{
    public partial class tutor_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"]!=null) { 
            Session.Abandon();
                Response.Redirect("~/tutor_login.aspx");
            }

        }
    }
}