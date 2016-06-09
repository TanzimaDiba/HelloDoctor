using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_Give_Review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string date = DateTime.Now.ToShortDateString();
        string doc_email = Session["Doc_Email"].ToString();
        string doc_name = toGetDoctorName(doc_email);
        string specialist = toGetDoctorSpecialist(doc_email);
        string location = toGetDoctorLocation(doc_email);

        Label_date.Text = date;
        Label_doc_name.Text = doc_name;
        Label_specialist.Text = specialist;
        Label_location.Text = location;
        
    }

    protected string toGetDoctorName(string doc_email)
    {
        string doc_name = null;

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            doc_name = Convert.ToString(dr[4]);
        }
        con.Close();
        return doc_name;
    }

    protected string toGetDoctorSpecialist(string doc_email)
    {
        string specialist = null;

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            specialist = Convert.ToString(dr[11]);
        }
        con.Close();
        return specialist;
    }

    protected string toGetDoctorLocation(string doc_email)
    {
        string location = null;

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            location = Convert.ToString(dr[7]);
        }
        con.Close();
        return location;
    }

    protected string toGetPatientName(string patient_email)
    {
        string patient_name = null;

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", patient_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            patient_name = Convert.ToString(dr[1]);
        }
        con.Close();
        return patient_name;
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
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        string date = DateTime.Now.ToShortDateString();
        string doc_email = Session["Doc_Email"].ToString();
        string doc_name = toGetDoctorName(doc_email);
        string specialist = toGetDoctorSpecialist(doc_email);
        string patient_email = Session["Patient_Email"].ToString();
        string patient_name = toGetPatientName(patient_email);

            string constr2 = ConfigurationManager.ConnectionStrings["Review_ConnectionString"].ConnectionString;
            SqlConnection con2 = new SqlConnection(constr2);
            SqlCommand cmd2 = new SqlCommand("INSERT INTO Review (Doc_Name, Doc_Email, Patient_Name, Patient_Email, Date, Review, Specialist) values(@Doc_Name, @Doc_Email, @Patient_Name, @Patient_Email, @Date, @Review, @Specialist)", con2);

            con2.Open();
            cmd2.Parameters.AddWithValue("@Doc_Name", doc_name);
            cmd2.Parameters.AddWithValue("@Doc_Email", doc_email);
            cmd2.Parameters.AddWithValue("@Patient_Name", patient_name);
            cmd2.Parameters.AddWithValue("@Patient_Email", patient_email);
            cmd2.Parameters.AddWithValue("@Date", date);
            cmd2.Parameters.AddWithValue("@Review", TextBox_review.Text);
            cmd2.Parameters.AddWithValue("@Specialist", specialist);
            cmd2.ExecuteNonQuery();
            con2.Close();

            Response.Redirect("Patient_Account.aspx");
    }
}