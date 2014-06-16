using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day02_20140604.Page.Day12_20140615
{
    public partial class worldCupSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/x-zip-compressed";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + "getMatch.exe");
            string filename = Server.MapPath("~/Files/getMatch.exe");
            Response.TransmitFile(filename);
        }
    }
}