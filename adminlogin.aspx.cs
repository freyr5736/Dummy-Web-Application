using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Project_02_Web_Application_C_Sharp_07_07_24
{
    public partial class AdminLogIn : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Any Page_Load logic if needed
        }

        // Admin login logic
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // SQL query to check for matching admin_id and password
                    SqlCommand cmd = new SqlCommand("SELECT * FROM admindb WHERE admin_id=@admin_id AND password=@password", con);

                    // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@admin_id", AdminIdInput_TextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", AdminPwInput_TextBox.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            // Successful login - show welcome message
                            string adminName = dr.GetValue(0).ToString(); // Assuming the admin's name is in the first column
                            string message = $"Welcome, {adminName}!";
                            // Register alert script to show the welcome message
                            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{message}');", true);
                            Session["username"] = dr.GetValue(0).ToString();
                            Session["role"] = "admin";
                            
                        }
                        Response.Redirect("homepage.aspx");
                    }
                    else
                    {
                        // Invalid credentials - show error message
                        string errorMessage = "Invalid Admin ID or Password";
                        // Register alert script to show the error message
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{errorMessage}');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any errors during execution
                string errorMessage = $"An error occurred: {ex.Message}";
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{errorMessage}');", true);
            }
        }
    }
}
