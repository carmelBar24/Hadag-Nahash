using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace MyProject
{
    public class Class1
    {
        public  SqlDataAdapter adapter = new SqlDataAdapter();
        public string carmel()
        {
            string s1 = HttpContext.Current.Server.MapPath("Data/")+"ksl.mdf";
          string s2=  @"Data Source=.\SQLEXPRESS;AttachDbFilename=" +
                s1 + ";Integrated Security=True;User Instance=True";
            return s2;

        }

        public DataSet getdata(string s)
        {
            DataSet d = new DataSet();
            SqlConnection sql1 = new SqlConnection(carmel());
            adapter = new SqlDataAdapter(s, sql1);
            sql1.Open();
            adapter.Fill(d);
            sql1.Close();
            return d;
        }

        public  bool Insert(string username, string password,string tel)
        {   
           DataSet ds = getdata("SELECT * FROM  Table1" );
            string where = string.Format("UserName = '{0}'",username);

            DataRow[] ar = ds.Tables[0].Select(where);
            if (ar.Length != 0)
                return false;

            DataRow dr = ds.Tables[0].NewRow();

            dr["UserName"] = username;
            dr["Pass"] = password;
            dr["Tel"] = tel;

            ds.Tables[0].Rows.Add(dr);
            
             SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.InsertCommand = builder.GetInsertCommand();
            int i = adapter.Update(ds);

            return true;
        }
        public  DataSet Update(string username, string password, string tel)
        {

            DataSet ds = getdata("SELECT * FROM  Table1");
            string where = string.Format("UserName = '{0}'" , username);

            DataRow[] row = ds.Tables[0].Select(where);
            if (row.Length != 1) return null;

            DataRow dr = row[0];

            dr["UserName"] = username;
            dr["Pass"] = password;
            dr["Tel"] = tel; 

            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetUpdateCommand();
            int i = adapter.Update(ds);

            return ds;
        }
        public  bool Delete(string username)
        {
            DataSet ds = getdata("SELECT * FROM   Table1");
            string where = string.Format("UserName = '{0}'", username);

            DataRow[] row = ds.Tables[0].Select(where);
            if (row.Length != 1) return false;

            DataRow dr = row[0];
            dr.Delete();

            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.DeleteCommand = builder.GetDeleteCommand();
            int i = adapter.Update(ds);

            return true;

        }
    }

}