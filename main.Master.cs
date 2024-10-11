using System;
using System.Web;
using System.Web.UI;

namespace Project_02_Web_Application_C_Sharp_07_07_24
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    // Check if the Session["role"] is null or empty
                    if (Session["role"] == null || string.IsNullOrWhiteSpace(Session["role"].ToString()))
                    {
                        // No role set, show login and signup, hide logout, admin, and moderator options
                        SetControlsVisibility(false, false, false, false, true, true);
                    }
                    else if (Session["role"].ToString().Equals("user", StringComparison.OrdinalIgnoreCase))
                    {
                        // User role, hide login/signup, show logout and user info
                        SetControlsVisibility(false, true, false, false, true, false);
                        lnkUser.Text = Session["username"].ToString();
                    }
                    else if (Session["role"].ToString().Equals("admin", StringComparison.OrdinalIgnoreCase))
                    {
                        // Admin role, hide login/signup, show admin/moderator/logout and user info
                        SetControlsVisibility(true, true, true, true, false, false);
                        lnkUser.Text = Session["username"].ToString();
                    }
                }
                catch (Exception ex)
                {
                    // Log exception (optional)
                    // Handle the exception appropriately, possibly logging it or showing a user-friendly message
                }
            }
        }

        protected void ModeratorButton_Click(object sender, EventArgs e)
        {
            // Redirect to moderator detail page
            Response.Redirect("~/moddetail.aspx");
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            // Clear session and update visibility of buttons
            Session.Clear();
            SetControlsVisibility(false, false, false, false, true, true);
            Response.Redirect("~/homepage.aspx");
        }

        // Helper method to set visibility of controls based on role
        private void SetControlsVisibility(bool moderatorVisible, bool logoutVisible, bool userVisible, bool adminAndModeratorVisible, bool loginVisible, bool signUpVisible)
        {
            ModeratorButton.Visible = moderatorVisible;
            lnkLogout.Visible = logoutVisible;
            lnkUser.Visible = userVisible;
            lnkLogin.Visible = loginVisible;
            lnkSignUp.Visible = signUpVisible;
        }
    }
}
