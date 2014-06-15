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
            Process[] processes;
            //Get the list of current active processes.
            processes = System.Diagnostics.Process.GetProcesses();
            //Grab some basic information for each process.
            for (int i = 0; i < processes.Length - 1; i++)
            {
                ListBox1.Items.Add(processes[i].ProcessName);
            }
            //Display the process information to the user

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
            Button2_Click(null, null);
            return ;
        }

        private void getProcess()
        {
            string str = "";
            Process[] processes;
            //Get the list of current active processes.
            processes = System.Diagnostics.Process.GetProcesses();
            //Grab some basic information for each process.
            Process process;
            for (int i = 0; i < processes.Length - 1; i++)
            {
                process = processes[i];
                str = str + Convert.ToString(process.Id) + " : " +
                process.ProcessName + "\r\n";
            }
            //Display the process information to the user
        }

        protected void Button2_Click(object sender, System.EventArgs e)
        {
            ListBox1.Items.Clear();
            Process[] processes;
            //Get the list of current active processes.
            processes = System.Diagnostics.Process.GetProcesses();
            //Grab some basic information for each process.
            for (int i = 0; i < processes.Length - 1; i++)
            {
                ListBox1.Items.Add(processes[i].ProcessName);
            }
            //Display the process information to the user
        }

        protected void Button3_Click(object sender, System.EventArgs e)
        {
            Process[] ps = Process.GetProcesses();
            foreach (Process item in ps)
            {
                if (item.ProcessName == ListBox1.SelectedItem.ToString())
                {
                    item.Kill();
                }
            }
            Button2_Click(null, null);
        }
    }
}