using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Project_02_Web_Application_C_Sharp_07_07_24
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string mod_strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Mod_Page_Load(object sender, EventArgs e) { }

        protected void Mod_Go_btn_Click(object sender, EventArgs e) { }

        void Mod_clear()
        {
            TextBox_ModID.Text = "";
            TextBox_ModName.Text = "";
        }

        protected void Mod_Update_btn_Click(object sender, EventArgs e)
        {
            if (Mod_checkAuthor())
            {
                Mod_update();
            }
            else
            {
                Response.Write("<script>alert('Moderator Doesn\'t Exist');</script>");
            }
        }

        void Mod_update()
        {
            try
            {
                using (SqlConnection mod_con = new SqlConnection(mod_strcon))
                {
                    if (mod_con.State == ConnectionState.Closed)
                    {
                        mod_con.Open();
                    }

                    SqlCommand mod_cmd = new SqlCommand("UPDATE moddb SET mod_name = @mod_name WHERE mod_id = @mod_id", mod_con);
                    mod_cmd.Parameters.AddWithValue("@mod_name", TextBox_ModName.Text.Trim());
                    mod_cmd.Parameters.AddWithValue("@mod_id", TextBox_ModID.Text.Trim());

                    mod_cmd.ExecuteNonQuery();

                    mod_con.Close();
                    Response.Write("<script>alert('Update Successful!');</script>");
                    Mod_clear();
                    GridView1.DataBind();
                }
            }
            catch (Exception mod_ex)
            {
                Response.Write("<script>alert('" + mod_ex.Message + "');</script>");
            }
        }

        protected void Mod_Delete_btn_Click(object sender, EventArgs e)
        {
            if (Mod_checkAuthor())
            {
                Mod_delete();
            }
            else
            {
                Response.Write("<script>alert('Moderator Doesn\'t Exist');</script>");
            }
        }

        void Mod_delete()
        {
            try
            {
                using (SqlConnection mod_con = new SqlConnection(mod_strcon))
                {
                    if (mod_con.State == ConnectionState.Closed)
                    {
                        mod_con.Open();
                    }

                    SqlCommand mod_cmd = new SqlCommand("DELETE FROM moddb WHERE mod_id = @mod_id", mod_con);
                    mod_cmd.Parameters.AddWithValue("@mod_id", TextBox_ModID.Text.Trim());

                    mod_cmd.ExecuteNonQuery();

                    mod_con.Close();
                    Response.Write("<script>alert('Delete Successful!');</script>");
                    Mod_clear();
                    GridView1.DataBind();
                }
            }
            catch (Exception mod_ex)
            {
                Response.Write("<script>alert('" + mod_ex.Message + "');</script>");
            }
        }

        protected void Mod_Add_btn_Click(object sender, EventArgs e)
        {
            if (Mod_checkAuthor())
            {
                Response.Write("<script>alert('Moderator Already Exists');</script>");
            }
            else
            {
                Mod_addNew();
            }
        }

        void Mod_addNew()
        {
            try
            {
                using (SqlConnection mod_con = new SqlConnection(mod_strcon))
                {
                    if (mod_con.State == ConnectionState.Closed)
                    {
                        mod_con.Open();
                    }

                    SqlCommand mod_cmd = new SqlCommand("INSERT INTO moddb (mod_id, mod_name) VALUES (@mod_id, @mod_name)", mod_con);
                    mod_cmd.Parameters.AddWithValue("@mod_id", TextBox_ModID.Text.Trim());
                    mod_cmd.Parameters.AddWithValue("@mod_name", TextBox_ModName.Text.Trim());

                    mod_cmd.ExecuteNonQuery();

                    mod_con.Close();
                    Response.Write("<script>alert('Added Successfully!');</script>");
                    Mod_clear();
                    GridView1.DataBind();
                }
            }
            catch (Exception mod_ex)
            {
                Response.Write("<script>alert('" + mod_ex.Message + "');</script>");
            }
        }

        bool Mod_checkAuthor()
        {
            try
            {
                using (SqlConnection mod_con = new SqlConnection(mod_strcon))
                {
                    if (mod_con.State == ConnectionState.Closed)
                    {
                        mod_con.Open();
                    }

                    SqlCommand mod_cmd = new SqlCommand("SELECT * FROM moddb WHERE mod_id = @mod_id", mod_con);
                    mod_cmd.Parameters.AddWithValue("@mod_id", TextBox_ModID.Text.Trim());

                    SqlDataAdapter mod_da = new SqlDataAdapter(mod_cmd);
                    DataTable mod_dt = new DataTable();
                    mod_da.Fill(mod_dt);

                    return mod_dt.Rows.Count >= 1;
                }
            }
            catch (Exception mod_ex)
            {
                Response.Write("<script>alert('" + mod_ex.Message + "');</script>");
                return false;
            }
        }
    }
}
