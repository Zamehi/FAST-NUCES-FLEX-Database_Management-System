using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class std_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MyTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = MyTextBox.Text;
        string password = TextBox1.Text;

        // Perform validation and database check for username and password
        if (IsValidUser(username, password))
        {
            // Create a session and store the username
            Session["Username"] = username;

            // Redirect to the next page
            Response.Redirect("std_home1.aspx");
        }
        else
        {
            // Show error message if login fails
            MyTextBox.Text = "Invalid username or password";
            TextBox1.Text = "Invalid username or password";
        }
    }

    // ------------------------ FUNCTION -----------------------------
    private bool IsValidUser(string username, string password)
    {
        string connectionString = "Data Source=LAPTOP-PCK3G5I1\\SQLEXPRESS;Initial Catalog=project23;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            // Construct the SQL query with parameterized queries
            string query = "SELECT COUNT(*) FROM user1 WHERE id = @Username AND password = @PasswordHash and role = @s";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Generate the password hash using a secure hashing algorithm like BCrypt
               // string passwordHash = HashPassword(password);

                // Set the parameter values to avoid SQL injection
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@s", "student");
                command.Parameters.AddWithValue("@PasswordHash", password);

                connection.Open();

                // Execute the query and get the result
                int count = (int)command.ExecuteScalar();

                // Return true if the count is greater than 0, indicating a match was found
                return count > 0;
            }
        }
        
    }
}