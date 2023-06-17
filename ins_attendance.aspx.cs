using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ins_attendance2 :  System.Web.UI.Page
{
    string id = "";
    string selectedValue = "";
    string selectedValue2 = "";

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
       
        DropDownList1.Items.Clear();
        selectedValue = DropDownList2.SelectedValue;

        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            string query = "SELECT section_id FROM instructor_course WHERE course_id = @cid";
            if (!string.IsNullOrEmpty(selectedValue))
            {
                // Populate the section dropdown based on the selected course
                //PopulateSectionDropdown(courseID);

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    //command.Parameters.AddWithValue("@insid", id);
                    command.Parameters.AddWithValue("@cid", selectedValue);
                    //`connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string itemName = reader["section_id"].ToString();
                            DropDownList1.Items.Add(new ListItem(itemName));
                        }
                    }
                }

                DropDownList1.Items.Insert(0, new ListItem("Select Section", ""));
            }
        }

        selectedValue2 = DropDownList1.SelectedValue;
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sectionID = DropDownList1.SelectedValue;

        if (!string.IsNullOrEmpty(sectionID))
        {
            // Retrieve the attendance data based on the selected section
            DataTable attendanceData = GetAttendanceData(sectionID);


            GridView1.DataSourceID = null;
            // Bind the attendance data to the GridView
            GridView1.DataSource = attendanceData;
            GridView1.DataBind();
        }
        else
        {
            // Clear the GridView when section selection
            // Clear the GridView when section selection is cleared
            GridView1.DataSourceID = null;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected DataTable GetAttendanceData(string sectionID)
    {
        // string connectionString = ConfigurationManager.ConnectionStrings["Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True"].ConnectionString;
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

        string query = "SELECT * FROM attendance WHERE Section_ID = @sectionID and course_id = @course;";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@sectionID", sectionID);
                command.Parameters.AddWithValue("@course", DropDownList2.SelectedValue);
                connection.Open();

                DataTable attendanceData = new DataTable();
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    adapter.Fill(attendanceData);
                }

                return attendanceData;
            }
        }
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}