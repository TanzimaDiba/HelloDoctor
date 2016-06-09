using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Doc_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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

    protected void Button_Click_Take_Appointment(object sender, CommandEventArgs e)
    {
        string email = Convert.ToString(e.CommandArgument);
        Session["Doc_Email"] = email;
        Server.Transfer("Patient_Second_Appointment.aspx");
    }
}