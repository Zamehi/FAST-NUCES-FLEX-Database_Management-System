using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class std_evaluation1 : System.Web.UI.Page
{
    string id = "21i-0780";
    string selectedValue = "";
    string selectedValue2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = (string)Session["Username"];
            string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT course_id FROM student_course WHERE student_id = @insid";

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

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedTable = DropDownList1.SelectedValue;
        BindGridView(selectedTable);
    }

    private void BindGridView(string selectedTable)
    {
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

        // Connect to your data source (e.g., SQL Server database)
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Create a SqlCommand object to retrieve data from the selected table
            string query = $"SELECT *  FROM {selectedTable} where course_id = @i1 and student_id = @i";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@i", id);
                command.Parameters.AddWithValue("@i1", DropDownList2.Text);
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}