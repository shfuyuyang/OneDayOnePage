using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day02_20140604.Page.Day16_20140622
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>onload();</script>");
        }
    }
}