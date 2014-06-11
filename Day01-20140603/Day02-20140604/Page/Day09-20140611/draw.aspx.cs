using System;
using System.Collections.Generic;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace Day02_20140604.Page.Day09_20140611
{
    public partial class draw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox2.Text == null || TextBox2.Text == "")
            {
                Response.Write("<script>alert('请输入你的名字！')</script>");
                return;
            }
            try
            {
                int num = int.Parse(TextBox1.Text);
                if (num <= 10 && num >= 1)
                {
                    drawing(num);
                }
                else
                {
                    Response.Write("<script>alert('数字超出范围！')</script>");
                    return;
                }
            }
            catch
            {
                Response.Write("<script>alert('请输入数字！')</script>");
                return;
            }
        }

        protected void drawing(int num)
        {
            System.Drawing.Bitmap image = new System.Drawing.Bitmap(1300, 500);
            Graphics g = Graphics.FromImage(image);
            //try
            //{
            int x = 5;
            int y = 50;
            //清空图片背景色
            g.Clear(Color.Yellow);
            Font font = new System.Drawing.Font("Arial", 12, (System.Drawing.FontStyle.Bold));
            System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), Color.Blue, Color.DarkRed, 1.2f, true);
            g.DrawString(TextBox2.Text + "的画乘法表", font, brush, 200, 5);
            g.DrawLine(new Pen(Color.Silver), 0, 30, 600, 30);
            for (int i = 1; i <= num; i++)
            {
                for (int j = 1; j <= i; j++)
                {
                    string str = j + "×" + i + "=" + (j * i).ToString() + "    ";
                    g.DrawString(str, font, brush, x, y);
                    x = x + str.Length + 60;
                }
                y = y + 20;
                x = 5;
            }
            //画图片的边框线
            g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
            Response.ClearContent();
            Response.ContentType = "image/Gif";
            Response.BinaryWrite(ms.ToArray());
            
            //}
            //finally
            //{
            //    g.Dispose();
            //    image.Dispose();
            //}
        }
    }
}