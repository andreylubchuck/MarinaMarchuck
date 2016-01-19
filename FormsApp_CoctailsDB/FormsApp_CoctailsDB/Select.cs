using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using MySql.Data.MySqlClient;

namespace FormsApp_CoctailsDB
{
    public partial class Select : Form
    {
        public Select()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = GetComments();
        }

        DataTable GetComments()
        {
            DataTable dt = new DataTable();
            MySqlConnectionStringBuilder mysqlSB = new MySqlConnectionStringBuilder();
            mysqlSB.Server = "127.0.0.1.";
            mysqlSB.Database = "project";
            mysqlSB.UserID = "root";
            mysqlSB.Password = "582623";

            string queryString = @"SELECT coctail.Name, coctail.Cost AS Coctails, recipe.Recipe AS Recipe FROM coctail LEFT JOIN recipe ON coctail.Recipe=recipe.ID ";

            using (MySqlConnection con = new MySqlConnection())
            {
                con.ConnectionString = mysqlSB.ConnectionString;
                MySqlCommand com = new MySqlCommand(queryString, con);

                try
                {
                    con.Open();

                    using (MySqlDataReader dr = com.ExecuteReader())
                    {
                        if (dr.HasRows)
                            dt.Load(dr);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            return dt;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            dataGridView1.DataSource = GetComments();
        }
        /*private void button1_Click_2(object sender, EventArgs e)
        {
            dataGridView1.DataSource = GetComments();
        }*/
    }
}


