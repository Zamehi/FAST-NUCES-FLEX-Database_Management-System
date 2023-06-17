using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class ins_home :  System.Web.UI.Page
{
    string c = "I1";
    //Session["Username"] = c;
    protected void Page_Load /*TextBox4_TextChanged*/(object sender, EventArgs e)
    {
        //// Make connection
        //SqlConnection conn = new SqlConnection("Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True");
        //conn.Open();
        //// MessageBox.Show("Connection Open");

        //// 1. Define variables 
        //SqlCommand command;
        //SqlDataReader dataReader;
        ////String Output = " ";
        //string un = TextBox4.Text;
        ////string pass = textBox2.Text;


        ////2. Define sql statement
        //string query = "select INS_NAME from Instructor where INS_ID = @c";// '"+string.Parse(c)+"' ";

        ////3. Command Statement
        //command = new SqlCommand(query, conn);

        ////4. Define dataReader
        //dataReader = command.ExecuteReader();


        ////5. Get the table values
        //while (dataReader.Read())
        //{
        //    TextBox4.Text = dataReader.GetValue(0).ToString();
        //    //Output = Output + dataReader.GetValue(0)+ "</br>";
        //}

        ///*command.ExecuteNonQuery();
        //command.Dispose();
        //conn.Close();*/
        //// close all connections
        //dataReader.Close();
        //command.Dispose();
        //conn.Close();

        if (!IsPostBack)
        {
            // string id = "I10"; // Assuming you have the variable containing the ID
            string id = (string)Session["Username"];
            string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True"; // Replace with your actual connection string

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT NAME, DOB, MAJOR, EMAIL  FROM user1 WHERE id = @InsId";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@InsId", id);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            TextBox4.Text = reader["NAME"].ToString();
                            TextBox1.Text = reader["DOB"].ToString();
                            TextBox6.Text = reader["MAJOR"].ToString();
                            TextBox7.Text = reader["EMAIL"].ToString();

                        }
                    }
                }
            }
        }


    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}