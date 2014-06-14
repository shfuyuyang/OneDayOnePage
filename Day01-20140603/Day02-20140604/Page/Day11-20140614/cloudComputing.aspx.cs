using System;
using System.Collections.Generic;
using System.IO;
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Day02_20140604.Page.Day11_20140614
{
    public partial class cloudComputing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Process p = new Process();
            p.StartInfo.FileName = Server.MapPath("~/Files/NameGenerator.exe"); //换成你要执行的   NOTEPAD.exe
            //p.StartInfo.FileName = "NOTEPAD.exe";
            //p.StartInfo.UseShellExecute = false;
            //p.StartInfo.RedirectStandardInput = true;
            //p.StartInfo.RedirectStandardOutput = true;
            //p.StartInfo.RedirectStandardError = true;
            //p.StartInfo.CreateNoWindow = true;
            string strOutput = null;
            try
            {
                p.Start();
                //p.StandardInput.WriteLine(commandText);
                //p.StandardInput.WriteLine("exit");
                //strOutput = p.StandardOutput.ReadToEnd();
                p.WaitForExit();
                p.Close();
            }
            catch 
            {

            }
            return ;
        }
    }
}