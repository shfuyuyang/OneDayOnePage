using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Day02_20140604.Page.Day15_20140621
{
    public partial class organ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTXT();
        }

        private void loadTXT()
        {
            ListBox1.Items.Clear();
            StreamReader srLog = new StreamReader(Server.MapPath("~/Page/Day15-20140621/chatlog.txt"), Encoding.GetEncoding("gb2312"));
            string temp = srLog.ReadLine();
            //ListBox1.Items[0].Text = "聊天记录";
            for (;temp!=null ; )
            {
                ListBox1.Items.Add(temp);
                temp = srLog.ReadLine();
            }
            srLog.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == null || TextBox1.Text == "")
            {
                Response.Write("<script>alert('请在第一个框中输入聊天者的名字！')</script>");
                return;
            }
            
            string result = DateTime.Now.ToString()+"----"+TextBox1.Text + ":" + TextBox2.Text;
            StreamWriter swLog = new StreamWriter(Server.MapPath("~/Page/Day15-20140621/chatlog.txt"),true, Encoding.GetEncoding("gb2312"));
            swLog.WriteLine(result);
            swLog.Close();
            TextBox2.Text = "";
            loadTXT();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}