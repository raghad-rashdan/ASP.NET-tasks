using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tasks29_12
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            Label1.Text = now.ToString();

        }
        protected void changelabelcolor(object sender, EventArgs e)
        {
            string getcolor = DropDownList1.SelectedItem.Text.ToString();
            Label1.ForeColor = System.Drawing.Color.FromName(getcolor);

            HttpCookie color = new HttpCookie("labelcolor");
            color.Values.Add("color", getcolor);
            Response.Cookies.Add(color);
            


        }
    }
}