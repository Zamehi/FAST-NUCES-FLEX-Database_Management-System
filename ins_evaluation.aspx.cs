using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ins_evaluation :  System.Web.UI.Page
{
    string id = "I1";int index = 0;
    string selectedValue = ""; string eva = "";
    string selectedValue2 = "";

    // ------------------------- COURSE DROP DOWN ------------------------
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
                            sections.Items.Add(new ListItem(itemName));
                        }
                    }
                }
               
               eva = sections2.SelectedValue;

               
            }

            selectedValue = sections.SelectedValue;
            // Response.Write(selectedValue);
        }
    }


    // ------------------------- SECTION DROP DOWN MENU -------------------
    protected void sections_SelectedIndexChanged(object sender, EventArgs e)
    {
        sections0.Items.Clear();
        selectedValue = sections.SelectedValue;

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
                            sections0.Items.Add(new ListItem(itemName));
                        }
                    }
                }

                sections0.Items.Insert(0, new ListItem("Select Section", ""));
            }
        }

        selectedValue2 = sections0.SelectedValue;
    }


    // ------------------------- EVALUATIONS DROP DOWN MENU -----------------------
    protected void sections0_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sectionID = sections0.SelectedValue;
        
        // Function
        BindGridView(sectionID);
        
    }
    private void BindGridView(string selectedTable)
    {
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

        // Connect to your data source (e.g., SQL Server database)
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Create a SqlCommand object to retrieve data from the selected table
            string query = $"SELECT *  FROM {selectedTable} join course_section on course_section.course_id = {selectedTable}. course_id where course_id = @i1 and section_id = @i";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@i", sections0.Text);
                command.Parameters.AddWithValue("@i1", sections.Text);
                // Execute the command and retrieve the data
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    // Create a DataTable to hold the data
                    DataTable marksData = new DataTable();

                    // Fill the DataTable with the data from the adapter
                    adapter.Fill(marksData);

                    // Bind the DataTable to the grid view
                    GridView1.DataSource = marksData;
                    GridView1.DataBind();
                }
            }
        }
    }

   


    protected void sections2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


  
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}