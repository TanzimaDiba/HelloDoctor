using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Find_Doctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Specialist"] == null)
            Session["Specialist"] = "General";
        category_name.Text = Session["Specialist"].ToString();
    }

    protected void Button_Click_Return_Category(object sender, CommandEventArgs e)
    {
        Session["Specialist"] = e.CommandArgument;
        Response.Redirect("Patient_Find_Doctor.aspx");

    }

    protected void Button_Click_View_Profile(object sender, CommandEventArgs e)
    {
        string email = Convert.ToString(e.CommandArgument);
        Session["Doc_Email"] = email;
        Session.Remove("Specialist");
        Server.Transfer("Patient_View_Doctor_Profile.aspx");
    }
    protected void Button_Click_Take_Appointment(object sender, CommandEventArgs e)
    {
        string email = Convert.ToString(e.CommandArgument);
        Session["Doc_Email"] = email;
        Session.Remove("Specialist");
        Server.Transfer("Patient_Take_Appointment.aspx");
    }

    protected void Logout(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoServerCaching();
        HttpContext.Current.Response.Cache.SetNoStore();
        Session.Abandon();
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("Patient.aspx");
    }
}