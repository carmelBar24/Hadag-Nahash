using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected bool b = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["sign"] == "הירשם")
                Response.Redirect("Sign.aspx");
            if (Request.Form["hithabrut"] == "התחבר")
            {
                string s = Request.Form["username"];
                string n = Request.Form["password"];
                string check = "SELECT UserName,Pass FROM Table1 WHERE(UserName='" + s + "')  AND (Pass='" + n + "')";
                Class1 c = new Class1();
                DataSet r = c.getdata(check);
                if (r.Tables.Count > 0 && r.Tables[0].Rows.Count > 0)
                {
                    Session["so"] = s;
                }
                else
                    b = true;

            }
            if (Request.Form["yezia"] == "התנתק")
            {
                Session["so"] = null;
                Response.Redirect("HomePage.aspx");
                
            }
        }
    }
}