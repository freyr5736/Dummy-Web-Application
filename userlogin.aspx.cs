using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Project_02_Web_Application_C_Sharp_07_07_24
{
    public partial class UserLogIn : System.Web.UI.Page
    {
        // Connection string
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Only run Page_Load logic if it's not a postback
            if (!IsPostBack)
            {
                // Any other Page_Load logic if needed
            }
        }

        // Redirect to admin login page
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        // User login logic
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

                    // Parameterized query to prevent SQL injection
                    SqlCommand cmd = new SqlCommand("SELECT * FROM memberdb WHERE member_id=@member_id AND password=@password", con);

                    // Add parameters to avoid SQL injection
                    cmd.Parameters.AddWithValue("@member_id", MemberIdInput_TextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", MemberPwInput_TextBox.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            // Assuming index 9 is for username and index 11 is for status
                            Session["username"] = dr.GetValue(0).ToString();
                            Session["role"] = "user"; // Setting the user role
                            Session["status"] = dr.GetValue(10).ToString();
                        }

                        // Redirecting user to homepage
                        Response.Redirect("homepage.aspx", false);
                        Context.ApplicationInstance.CompleteRequest(); // To avoid thread abort exceptions
                    }
                    else
                    {
                        // Invalid UserID or password
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Invalid UserID or Password');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                // Log and display the error
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('An error occurred: {ex.Message}');", true);
            }
        }
    }
}
