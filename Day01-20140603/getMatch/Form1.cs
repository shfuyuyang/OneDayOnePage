using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace getMatch
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void buttonGetMatch_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == null || textBox1.Text == "")
            {
                MessageBox.Show("请输入球队！");
                return;
            }
            var client = new worldCupServer.worldCupSoapClient();
            worldCupServer.ArrayOfMatch matches = client.getMatch(textBox1.Text);

            string result = "";

            for (int i = 0; i < matches.Count; i++)
            {
                if (matches[i].ifreturn == true)
                {
                    result += "时间：" + matches[i].time.ToString() + "    主场：" + matches[i].homeCourt + "    客场：" + matches[i].visitingCourt + "\r\n";
                }
            }
            if (result == "")
            {
                result = "未能获取到比赛，请确认输入球队是否为A组。";
            }
            MessageBox.Show(result);
        }
    }
}
