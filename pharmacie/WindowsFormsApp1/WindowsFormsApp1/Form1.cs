using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Int16 total_score = 0;
            if (radioButton1.Checked == true) { total_score += 1; }
            if (radioButton2.Checked == true) { total_score += 2; }
            if (radioButton3.Checked == true) { total_score += 3; }
            if (radioButton4.Checked == true) { total_score += 4; }

            if (radioButton8.Checked == true) { total_score += 1; }
            if (radioButton7.Checked == true) { total_score += 2; }
            if (radioButton6.Checked == true) { total_score += 3; }
            if (radioButton5.Checked == true) { total_score += 4; }

            if (radioButton12.Checked == true) { total_score += 1; }
            if (radioButton11.Checked == true) { total_score += 2; }
            if (radioButton10.Checked == true) { total_score += 3; }
            if (radioButton9.Checked == true)  { total_score += 4; }

            if (radioButton16.Checked == true) { total_score += 1; }
            if (radioButton15.Checked == true) { total_score += 2; }
            if (radioButton14.Checked == true) { total_score += 3; }
            if (radioButton13.Checked == true) { total_score += 4; }

            if (radioButton20.Checked == true) { total_score += 1; }
            if (radioButton19.Checked == true) { total_score += 2; }
            if (radioButton18.Checked == true) { total_score += 3; }
            if (radioButton17.Checked == true) { total_score += 4; }

            if (radioButton40.Checked == true) { total_score += 1; }
            if (radioButton39.Checked == true) { total_score += 2; }
            if (radioButton38.Checked == true) { total_score += 3; }
            if (radioButton37.Checked == true) { total_score += 4; }

            if (radioButton36.Checked == true) { total_score += 1; }
            if (radioButton31.Checked == true) { total_score += 2; }
            if (radioButton30.Checked == true) { total_score += 3; }
            if (radioButton29.Checked == true) { total_score += 4; }

            if (radioButton32.Checked == true) { total_score += 1; }
            if (radioButton31.Checked == true) { total_score += 2; }
            if (radioButton30.Checked == true) { total_score += 3; }
            if (radioButton29.Checked == true) { total_score += 4; }

            if (radioButton28.Checked == true) { total_score += 1; }
            if (radioButton27.Checked == true) { total_score += 2; }
            if (radioButton26.Checked == true) { total_score += 3; }
            if (radioButton25.Checked == true) { total_score += 4; }

            if (radioButton24.Checked == true) { total_score += 1; }
            if (radioButton23.Checked == true) { total_score += 2; }
            if (radioButton22.Checked == true) { total_score += 3; }
            if (radioButton21.Checked == true) { total_score += 4; }

            textBox1.Text = total_score.ToString();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void radioButton10_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
