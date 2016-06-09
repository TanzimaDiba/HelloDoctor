using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Specialist"] == null)
        {
            Session["Specialist"] = "General";
        }
        category_name.Text = Session["Specialist"].ToString();
    }

    protected void Button_Click_Return_Category(object sender, CommandEventArgs e)
    {
        Session["Specialist"] = e.CommandArgument;
        Response.Redirect("Review.aspx");
    }
    protected void Button_Click_View_Profile(object sender, CommandEventArgs e)
    {
        string email = Convert.ToString(e.CommandArgument);
        Session["Doc_Email"] = email;
        Session.Remove("Specialist");
        Server.Transfer("View_Doctor_Profile.aspx");
    }

    protected void Button_Click_Take_Appointment(object sender, CommandEventArgs e)
    {
        string email = Convert.ToString(e.CommandArgument);
        Session["Doc_Email"] = email;
        Session.Remove("Specialist");
        Server.Transfer("Take_Appointment.aspx");
    }
}