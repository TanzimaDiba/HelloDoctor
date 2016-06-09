using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Patient_View_Doctor_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string doc_email = Session["Doc_Email"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string doc_name = Convert.ToString(dr[4]);
            Label_doc_name.Text = doc_name;

            Label_doc_email.Text = doc_email;

            string contact = Convert.ToString(dr[3]);
            Label_contact.Text = contact;

            string date_birth = Convert.ToString(dr[6]);
            Label_date_birth.Text = date_birth;

            string location = Convert.ToString(dr[7]);
            Label_location.Text = location;

            string college = Convert.ToString(dr[8]);
            Label_college.Text = college;

            string year = Convert.ToString(dr[9]);
            Label_year.Text = year;

            string specialist = Convert.ToString(dr[11]);
            Label_specialist.Text = specialist;

            string qualification = Convert.ToString(dr[13]);
            Label_qualification.Text = qualification;
        }
        con.Close();
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
    protected void Button_take_appointment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Patient_Take_Appointment.aspx");
    }
}