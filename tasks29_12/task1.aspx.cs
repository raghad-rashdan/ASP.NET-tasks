using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tasks29_12
{
    public partial class task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["log"] != null)
            {
                nametxt.Text = Request.Cookies["login"]["UserName"].ToString();
                passtxt.Attributes["value"] = Request.Cookies["login"]["Password"].ToString();

            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            HttpCookie k = new HttpCookie("login");
            k.Values.Add("UserName", nametxt.Text);
            k.Values.Add("Password", passtxt.Text);

            if (CheckBox1.Checked)
            {
                k.Expires = DateTime.Now.AddSeconds(10);
                Response.Cookies.Add(k);

            }
            Response.Redirect("test.aspx");

        }
    }
}