using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Haverim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["so"] == null)
            {
                Session["kavua"] = "דף זה לרשומים בלבד,התחבר לאתר ותוכל לגשת לדף זה ";
                Response.Redirect("Error.aspx");
            }
        }
    }
}