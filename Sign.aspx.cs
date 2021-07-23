using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["sub"] == "הירשם לאתר!")
            {
                
                string password = Request.Form["pwd"];
                string tele = Request.Form["select"] + Request.Form["tel"];
                string user = Request.Form["username"];
                user = user.Remove(user.IndexOf(','), 1);
                Class1 d = new Class1();
                bool f = d.Insert(user, password, tele);
                if (f == true)
                {
                    Session["kavua"] = "כל הכבוד! נרשמת בהצלחה!";
                    Session["so"] = user;
                    Response.Redirect("Error.aspx");
                }
                if (f == false)
                {
                    Session["kavua"] = "!לא הצלחת להירשם";
                    Response.Redirect("Error.aspx");
                }

            }
        }
    }
}