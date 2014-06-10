using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day02_20140604.Page.Day07_20140609
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FileUpload1.Visible = false;
            TextBox1.Visible = false;
            ButtonUpload.Visible = false;

            ListBox1.Visible = false;
            ButtonDownload.Visible = false;
            TextBox2.Visible = false;
        }

        protected void ButtonUp_Click(object sender, EventArgs e)
        {
            FileUpload1.Visible = true;
            TextBox1.Visible = true;
            ButtonUpload.Visible = true;

            ListBox1.Visible = false;
            ButtonDownload.Visible = false;
            TextBox2.Visible = false;
        }

        protected void ButtonDown_Click(object sender, EventArgs e)
        {
            FileUpload1.Visible = false;
            TextBox1.Visible = false;
            ButtonUpload.Visible = false;

            ListBox1.Visible = true;
            ButtonDownload.Visible = true;
            TextBox2.Visible = true;

            string[] fileNames = Directory.GetFiles(Server.MapPath("~/Files/"));
            if (fileNames == null)
            {
                return;
            }
            for (int i = 0; i < fileNames.Length; i++)
            {
                ListBox1.Items.Add(fileNames[i].Replace(Server.MapPath("~/Files/"), ""));
            }
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            if (!TextBox1.Text.Equals("1990712"))
            {
                Response.Write("<script>alert('请输入核对码！')</script>"); 
                return;
            }
            if (FileUpload1.HasFile)
            {
                if (!File.Exists(Server.MapPath("~/Files/") + FileUpload1.FileName))
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Files/") + FileUpload1.FileName);
                    Response.Write("<script>alert('上传成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('文件已存在，请更名后上传！')</script>");
                }
            }
        }

        protected void ButtonDownload_Click(object sender, EventArgs e)
        {
            if (!TextBox2.Text.Equals("1990712"))
            {
                Response.Write("<script>alert('请输入核对码！')</script>");
                return;
            }
            else
            {
                string fileName = ListBox1.SelectedValue;
                string newUrl = "http:" + "//www.sherlockroiland.com/Files/" + fileName;
                //Response.Write("<script>window.open('" + newUrl + "','_blank')</script>");  //原窗口保留，另外新增一个新页面;
                Response.Redirect(Server.MapPath("~/Files/") + fileName);
            }
        }


    }
}