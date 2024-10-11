using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Project_02_Web_Application_C_Sharp_07_07_24
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic, if any, goes here.
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle DropDownList change event if needed
        }

        // Sign-up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(check())
            {
                Response.Write("<script>alert('Member ID already exists');</script>");
            }
            else
            {
                SignUP();
            }
           
        }

        //user defined functions

        bool check()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // SQL command with parameterized query
                    SqlCommand cmd = new SqlCommand("select * from memberdb where member_id='"+TextBox_MemberID.Text.Trim()+"';",con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if(dt.Rows.Count > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
            }
            catch (Exception ex)
            {
                // Handle any errors that occur during database interaction
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }
        void SignUP()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // SQL command with parameterized query
                    SqlCommand cmd = new SqlCommand("INSERT INTO memberdb(" +
                        "full_name, dob, contact, email, state, city, pincode, " +
                        "address, member_id, password, account_status) " +
                        "VALUES (@full_name, @dob, @contact, @email, @state, @city, " +
                        "@pincode, @address, @member_id, @password, @account_status)", con);

                    // Adding parameters with data from the form
                    cmd.Parameters.AddWithValue("@full_name", TextBox_FullName.Text.Trim());

                    // Parse and add date parameter
                    DateTime dob;
                    if (DateTime.TryParse(TextBox_Date.Text.Trim(), out dob))
                    {
                        cmd.Parameters.AddWithValue("@dob", dob);
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Date Format');</script>");
                        return; // Exit the method if the date format is invalid
                    }

                    cmd.Parameters.AddWithValue("@contact", TextBox_Contact.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox_EmailID.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", DropDownList_State.SelectedValue);
                    cmd.Parameters.AddWithValue("@city", TextBox_City.Text.Trim());

                    // Convert pincode to integer and add parameter
                    int pincode;
                    if (int.TryParse(TextBox_Pincode.Text.Trim(), out pincode))
                    {
                        cmd.Parameters.AddWithValue("@pincode", pincode);
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Pincode Format');</script>");
                        return; // Exit the method if the pincode format is invalid
                    }

                    cmd.Parameters.AddWithValue("@address", TextBox_Address.Text.Trim());
                    cmd.Parameters.AddWithValue("@member_id", TextBox_MemberID.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox_Password.Text.Trim());
                    cmd.Parameters.AddWithValue("@account_status", "pending");

                    // Execute the SQL command
                    cmd.ExecuteNonQuery();

                    con.Close();
                    Response.Write("<script>alert('Sign Up Successful. Go To Login Page to Login');</script>");
                }
            }
            catch (Exception ex)
            {
                // Handle any errors that occur during database interaction
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}
