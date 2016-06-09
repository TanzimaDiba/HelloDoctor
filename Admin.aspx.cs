using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_admin_login_Click(object sender, EventArgs e)
    {
        string admin = TextBox_admin.Text.ToString();
        string admin_password = TextBox_admin_password.Text.ToString();

        if (admin.Equals("admin") && admin_password.Equals("hello"))
        {
            Response.Redirect("Admin_Page.aspx");
        }
        else
        {
            Label_admin_warning.Visible = true;
        }
    }
}