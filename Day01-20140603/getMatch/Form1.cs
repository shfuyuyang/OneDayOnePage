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
            var client =new worldCupServer.worldCupSoapClient();
            worldCupServer.ArrayOfMatch matches = client.getMatch(textBox1.Text);

            //var rq = 

        }
    }
}
