using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//using System.weightagelections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Activities.Statements;
//using static System.weightagelections.Specialized.BitVector32;

public partial class ins_marks :  System.Web.UI.Page
{
    
        string id = "I10";
        string selectedValue = "";
        string selectedValue2 = "";

    bool CheckDataExists(string data)
    {
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT COUNT(*) FROM weightage WHERE weightage.course_id = @Data";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Data", data);
                int count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }
    }

    // Drop down course
    protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";
              id = (string)Session["Username"];
            using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT course_id FROM instructor_course WHERE ins_id = @insid";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@insid", id);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string itemName = reader["course_id"].ToString();
                                DropDownList2.Items.Add(new ListItem(itemName));
                            }
                        }
                    }
                }

                selectedValue = DropDownList2.SelectedValue;
                // Response.Write(selectedValue);
            }
        
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string conn = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";
      
        string ass = TextBox1.Text;
        string quiz = TextBox2.Text;
        string ss1 = TextBox3.Text;
        string ss2 = TextBox4.Text;
        string final = TextBox5.Text;
        string project = TextBox6.Text;
        // ---------------------------------------
        string data = DropDownList2.SelectedValue;
        string a = "Assignment"; string b = "Sessional1"; string c = "Sessional2";
        string d = "Quiz"; string ef= "Final"; string f = "Project";
        bool dataExists = CheckDataExists(data);



        string connString = conn;
        string value = TextBox1.Text;

       // string insertQuery = "INSERT INTO weightage (weightage) VALUES (@Value)";
        //string insertQuery= "SELECT course_id FROM weightage WHERE evaluation = @insid";
        //using (SqlConnection connection = new SqlConnection(connString))
        //{
        //    connection.Open();
        //    using (SqlCommand command = new SqlCommand(insertQuery, connection))
        //    {
        //        command.Parameters.AddWithValue("@insid", id);
        //        command.Parameters.AddWithValue("@Value", "Assignment");
        //        command.ExecuteNonQuery();
        //    }
        //}
      //  Vhecking condition for 100 %

       int v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0;
       bool success = int.TryParse(ass, out v1);
        bool success2 = int.TryParse(quiz, out v2);
        bool success3 = int.TryParse(ss1, out v3);
        bool success4 = int.TryParse(ss2, out v4);
        bool success5 = int.TryParse(final, out v5);
        bool success6 = int.TryParse(project, out v6);

        int sum = v1 + v2 + v3 + v4 + v5 + v6;
        if (sum == 100)
        {

            using (SqlConnection connection = new SqlConnection(conn))
            {
                connection.Open();

                if (dataExists)
                {
                    string updateQuery1 = "UPDATE weightage SET weightage = @ass WHERE Course_ID = @data and evaluation = @a";
                    string updateQuery2 = "UPDATE weightage SET weightage = @quiz WHERE Course_ID = @data and evaluation = @d";
                    string updateQuery3 = "UPDATE weightage SET weightage = @ss1 WHERE Course_ID = @data and evaluation = @b";
                    string updateQuery4 = "UPDATE weightage SET weightage = @ss2 WHERE Course_ID = @data and evaluation = @c";
                    string updateQuery5 = "UPDATE weightage SET weightage = @final WHERE Course_ID = @data and evaluation = @ef";
                    string updateQuery6 = "UPDATE weightage SET weightage = @project WHERE Course_ID = @data and evaluation = @f";

                    using (SqlCommand command = new SqlCommand(updateQuery1, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@ass", ass);
                        command.Parameters.AddWithValue("@a", a);
                        command.ExecuteNonQuery();
                    }
                    using (SqlCommand command = new SqlCommand(updateQuery2, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@quiz", quiz);
                        command.Parameters.AddWithValue("@d", d);
                        command.ExecuteNonQuery();
                    }
                    using (SqlCommand command = new SqlCommand(updateQuery3, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@ss1", ss1);
                        command.Parameters.AddWithValue("@b", b);
                        command.ExecuteNonQuery();
                    }
                    using (SqlCommand command = new SqlCommand(updateQuery4, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@ss2", ss2);
                        command.Parameters.AddWithValue("@c", c);
                        command.ExecuteNonQuery();
                    }
                    using (SqlCommand command = new SqlCommand(updateQuery5, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@final", final);
                        command.Parameters.AddWithValue("@ef", ef);
                        command.ExecuteNonQuery();
                    }
                    using (SqlCommand command = new SqlCommand(updateQuery6, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@project", project);
                        command.Parameters.AddWithValue("@f", f);
                        command.ExecuteNonQuery();
                    }
                }
                else
                {
                    string insertQuery = @"INSERT INTO weightage (evaluation, weightage, course_id)
                      VALUES (@ass, @w1, @data),
                             (@quiz, @w2, @data),
                             (@ss1, @w3, @data),
                             (@ss2, @w4, @data),
                             (@final, @w5, @data),
                             (@project, @w6, @data)";

                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        command.Parameters.AddWithValue("@data", data);
                        command.Parameters.AddWithValue("@w1", ass);
                        command.Parameters.AddWithValue("@ass", a);
                        command.Parameters.AddWithValue("@quiz", d);
                        command.Parameters.AddWithValue("@w2", quiz);
                        command.Parameters.AddWithValue("@ss1", b);
                        command.Parameters.AddWithValue("@w3", ss1);
                        command.Parameters.AddWithValue("@ss2", c);
                        command.Parameters.AddWithValue("@w4", ss2);
                        command.Parameters.AddWithValue("@final", ef);
                        command.Parameters.AddWithValue("@w5", final);
                        command.Parameters.AddWithValue("@project", f);
                        command.Parameters.AddWithValue("@w6", project);
                        command.ExecuteNonQuery();
                    }


                    //string insertQuery1 = "INSERT INTO weightage (evaluation,weightage,course_id) VALUES (@ass, @w1,@data)";
                    //string insertQuery2 = "INSERT INTO weightage (evaluation,weightage,course_id) VALUES (@quiz, @w2,@data)";
                    //string insertQuery3 = "INSERT INTO weightage (evaluation,weightage,course_id) VALUES (@ss1, @w3,@data)";
                    //string insertQuery4 = "INSERT INTO weightage (evaluation,weightage,course_id) VALUES (@ss2, @w4,@data)";
                    //string insertQuery5 = "INSERT INTO weightage (evaluation,weightage,course_id) VALUES (@final, @w5,@data)";
                    //string insertQuery6 = "INSERT INTO weightage (evaluation,weightage,course_id) VALUES (@project, @w6,@data)";

                    //using (SqlCommand command = new SqlCommand(insertQuery1, connection))
                    //{
                    //    command.Parameters.AddWithValue("@data", data);
                    //    command.Parameters.AddWithValue("@w1", ass);
                    //    command.Parameters.AddWithValue("@ass", a);
                    //    command.ExecuteNonQuery();
                    //}
                    //using (SqlCommand command = new SqlCommand(insertQuery2, connection))
                    //{
                    //    command.Parameters.AddWithValue("@data", data);
                    //    command.Parameters.AddWithValue("@w2", quiz);
                    //    command.Parameters.AddWithValue("@quiz", d);
                    //    command.ExecuteNonQuery();
                    //}
                    //using (SqlCommand command = new SqlCommand(insertQuery3, connection))
                    //{
                    //    command.Parameters.AddWithValue("@data", data);
                    //    command.Parameters.AddWithValue("@w3", ss1);
                    //    command.Parameters.AddWithValue("@ss1", b);
                    //    command.ExecuteNonQuery();
                    //}
                    //using (SqlCommand command = new SqlCommand(insertQuery4, connection))
                    //{
                    //    command.Parameters.AddWithValue("@data", data);
                    //    command.Parameters.AddWithValue("@w4", ss1);
                    //    command.Parameters.AddWithValue("@ss2", c);
                    //    command.ExecuteNonQuery();
                    //}
                    //using (SqlCommand command = new SqlCommand(insertQuery5, connection))
                    //{
                    //    command.Parameters.AddWithValue("@data", data);
                    //    command.Parameters.AddWithValue("@w5", final);
                    //    command.Parameters.AddWithValue("@final", ef);
                    //    command.ExecuteNonQuery();
                    //}
                    //using (SqlCommand command = new SqlCommand(insertQuery6, connection))
                    //{
                    //    command.Parameters.AddWithValue("@data", data);
                    //    command.Parameters.AddWithValue("@w6", project);
                    //    command.Parameters.AddWithValue("@project", f);
                    //    command.ExecuteNonQuery();
                    //}
                }
            }
            TextBox7.Text = "Success^.^";
        }
        else
        {
            TextBox7.Text = "Error*_*";
        }


        // -----------------------
    }


    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}