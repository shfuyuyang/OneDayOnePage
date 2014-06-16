using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace WindowsFormsDatabase
{
    public partial class connectMySQL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet da = MySqlHelper.GetDataSet(MySqlHelper.Conn, CommandType.Text, "delete from students where id>0;", null);
            //MySqlHelper.GetDataSet(MySqlHelper.Conn, CommandType.Text, "insert students values(1,'yy');", null);
            //DataView dv= da.Tables[0].DefaultView;
            //string temp= dv[1]["name"].ToString();
            for (int i = 1; i < 50; i++)
            {
                MySqlHelper.GetDataSet(MySqlHelper.Conn, CommandType.Text, "insert students values(" + i.ToString() + ",'44','55');", null);
            }
            Response.Write("<script>alert('完成！')</script>");
        }
    }
}