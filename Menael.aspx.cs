using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MyProject
{
    public partial class Menael : System.Web.UI.Page
    {
        Class1 db = new Class1();
        DataRow editRow = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["so"] == null || ((string)Session["so"]) != "מנהלת" && ((string)Session["so"]) != "Moshe7")
            
            {
                Session["kavua"] = "אין לך הרשאה להיכנס לדף זה ";
                Response.Redirect("Error.aspx");
            }

            if (Request.Form["delete"] == "מחק משתמש")
            {
                string user = Request.Form["menahel"];
                if (user != "")
                {
                    if (db.Delete(user))
                    {

                    }
                    else error.Text = "משתמש זה לא קיים במערכת";
                }
                else
                    error.Text = "אתה צריך לרשום בשדה טקסט את המשתמש ";
            }
            if (Request.Form["update"] == "עדכן משתמש")
            {
                string user = Request.Form["menahel"];
                if (user != "")
                {
                    DataSet ds = db.getdata("SELECT * FROM [Table1] WHERE UserName='" + user + "'");
                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        editRow = ds.Tables[0].Rows[0];
                    }
                    else error.Text = "משתמש זה לא קיים במערכת";
                }
                else
                    error.Text = "אתה צריך לרשום בשדה טקסט את המשתמש ";
            }
            if (Request.Form["edit"] == "שמור")
            {
                string user = Request.Form["useredit"];
                string pass = Request.Form["newpass"];
                string tel = Request.Form["newtel"];

                db.Update(user, pass, tel);
            }
        }
        protected void Table()
        {
            DataSet ds = db.getdata("SELECT * FROM [Table1]");
            string s = "<table>";
            s += "<tr>";
            s += "<td>שם המשתמש</td>";
            s += "<td>סיסמא</td>";
            s += "<td>מספר טלפון</td>";
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DataRow dr = ds.Tables[0].Rows[i];
                s += "<tr>";
                s += "<td>" + dr["UserName"].ToString() + "</td>";
                s += "<td>" + dr["Pass"].ToString() + "</td>";
                s += "<td>" + dr["Tel"].ToString() + "</td>";
                s += "</tr>";

            }
            s += "</table>";
            Response.Write(s);
        }
        protected void Edit()
        {
            if (editRow == null) return;
            string s = "<table>";
            s += "<tr> <td>שם משתמש</td> <td>" + editRow["UserName"] + "</td></tr>";
            s += "<tr> <td>סיסמא</td> <td><input type='text' name='newpass' value='" + editRow["Pass"] + "' /></td></tr>";
            s += "<tr> <td>מספר טלפון</td> <td><input type='text' name='newtel' value='" + editRow["Tel"] + "' /></td></tr>";
            s += "<tr> <td><input type='submit' name='edit' value='שמור' /></td></tr>";
            s += "</table>";
            s += "<input type='hidden' name='useredit' value='" + editRow["UserName"] + "'/>";
            Response.Write(s);
        }
    }
}