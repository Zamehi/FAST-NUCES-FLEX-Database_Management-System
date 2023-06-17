using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

public partial class std_cgpa : System.Web.UI.Page
{
    string id = "21i-0780";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // id = (string)Session["Username"];
            // Execute the query and retrieve the result
            string result = ExecuteQuery();

            // Display the result in the text box
            TextBox1.Text = result;
            // Retrieve the CGPA data from the data source
            var cgpaData = GetData();

            // Bind the CGPA data to the chart control
            Chart2.DataSource = cgpaData;
            Chart2.DataBind();
        }
    }

    private DataTable GetData()
    {
        DataTable dt = new DataTable();

        DataTable gpaData = new DataTable();
        gpaData.Columns.Add("semester_id", typeof(string));
        gpaData.Columns.Add("his_gpa", typeof(double));

        //gpaData.Rows.Add("Semester 1", 3.5);
        //gpaData.Rows.Add("Semester 2", 3.8);
        //gpaData.Rows.Add("Semester 3", 3.2);
        //gpaData.Rows.Add("Semester 4", 3.6);
        // Connect to the database
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // Create the SQL query
            string query = "SELECT semester_id, student_id, his_gpa FROM gpa where student_id= @id order by semester_id";

            // Create a command to execute the query
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Open the database connection
                connection.Open();
                command.Parameters.AddWithValue("@id", id);
                // Execute the query and retrieve the data
                using (SqlDataReader reader = command.ExecuteReader())
                {

                    // Add columns to the DataTable
                    dt.Columns.Add("Semester");
                    dt.Columns.Add("GPA");

                    // Iterate through the result set and add rows to the DataTable
                    while (reader.Read())
                    {
                        string semesterId = reader["semester_id"].ToString();
                        double gpa = Convert.ToDouble(reader["his_gpa"]);

                        dt.Rows.Add(semesterId, gpa);
                    }
                }
            }
        }

        return dt;

    }
    protected void Chart2_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    private string ExecuteQuery()
    {
        string result = string.Empty;

        // Connect to the database
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // Create the SQL query
            string query = "SELECT student_id, SUM(his_gpa) / COUNT(DISTINCT semester_id) AS cgpa " +
                           "FROM gpa " +
                           "WHERE student_id = @studentId " +
                           "GROUP BY student_id";

            // Create a command to execute the query
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Set the student ID parameter value
                command.Parameters.AddWithValue("@studentId", id);

                // Open the database connection
                connection.Open();

                // Execute the query and retrieve the result
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // Read the result value
                    result = reader["cgpa"].ToString();
                }
            }
        }

        return result;
    }

}