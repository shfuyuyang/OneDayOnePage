using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day02_20140604.Page.Day10_20140612
{
    public partial class imageMap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int hour = DateTime.Now.Hour;
            if (hour >= 12)
            {
                Label1.Text = "下午好！";
            }
            else
            {
                Label1.Text = "上午好！";
            }
            Label2.Text = "您的IP地址为："+getIp();
            HttpBrowserCapabilities bc = new HttpBrowserCapabilities();
            bc = Request.Browser;
            string xitong = "你的操作系统为";
            Label3.Text = xitong + bc.Platform + "   浏览器类型:" + bc.Type;
        }

        private string getIp()
        {      /*穿过代理服务器取远程用户真实IP地址：*/
            if (Request.ServerVariables["HTTP_VIA"] != null)
                return Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
            else
                return Request.ServerVariables["REMOTE_ADDR"].ToString();
        }
    }
}