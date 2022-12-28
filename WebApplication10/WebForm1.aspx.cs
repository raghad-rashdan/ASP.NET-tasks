using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string comment = textAreaExample.Value;
            SqlConnection con = new SqlConnection("data source = DESKTOP-J6CEG9M\\SQLEXPRESS; database =task28_12; integrated security=SSPI");
            con.Open();
            string query = "insert into comment (comment)" + " values (@comment)";
            SqlCommand comm = new SqlCommand(query, con);
            comm.Parameters.AddWithValue("@comment", comment);
            comm.ExecuteNonQuery();
            con.Close();
            textAreaExample.Value = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
        }
    }
}