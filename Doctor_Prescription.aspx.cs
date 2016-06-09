using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doctor_Prescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string doc_email = Session["Doc_Email"].ToString();
        string patient_email = Session["Patient_Email"].ToString();
        string patient_age = toGetPatientAge(patient_email);

        string constr = ConfigurationManager.ConnectionStrings["Prescription_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Prescription WHERE Doc_Email=@Doc_Email AND Patient_Email=@Patient_Email AND Paid=@Paid", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        cmd.Parameters.AddWithValue("@Patient_Email", patient_email);
        cmd.Parameters.AddWithValue("@Paid", "No");
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string appointment_date = Convert.ToString(dr[3]);
            Label_appointment_date.Text = appointment_date;

            string serial_no = Convert.ToString(dr[4]);
            Label_serial_no.Text = serial_no;

            string no_visit = Convert.ToString(dr[12]);
            Label_no_visit.Text = no_visit;

            string patient_name = Convert.ToString(dr[13]);
            Label_patient_name.Text = patient_name;

            string payment_method = Convert.ToString(dr[11]);
            Label_payment_method.Text = payment_method;

            string medicine = Convert.ToString(dr[6]);
            TextBox_medicine.Text = medicine;

            string advice = Convert.ToString(dr[7]);
            TextBox_advice.Text = advice;

            string test = Convert.ToString(dr[8]);
            TextBox_test.Text = test;
        }
        Label_patient_age.Text = patient_age;
        con.Close();
    }

    protected string toGetPatientAge(string patient_email)
    {
        string patient_age = null;

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", patient_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            patient_age = Convert.ToString(dr[4]);
        }
        con.Close();

        return patient_age;
    }

    protected void Logout(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoServerCaching();
        HttpContext.Current.Response.Cache.SetNoStore();
        Session.Abandon();
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("Doctor.aspx");
    }
    protected void Button_done_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["Prescription_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("UPDATE Prescription SET Medicine=@Medicine, Advice=@Advice, Test=@Test, Next_Date=@Next_Date, Paid=@Paid WHERE Doc_Email=@Doc_Email AND Patient_Email=@Patient_Email", con);
        cmd.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        cmd.Parameters.AddWithValue("@Patient_Email", Session["Patient_Email"].ToString());
        cmd.Parameters.AddWithValue("@Medicine", TextBox_medicine.Text);
        cmd.Parameters.AddWithValue("@Advice", TextBox_advice.Text);
        cmd.Parameters.AddWithValue("@Test", TextBox_test.Text);
        cmd.Parameters.AddWithValue("@Next_Date", TextBox_next_date.Text);
        cmd.Parameters.AddWithValue("@Paid", "Yes");
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Session.Remove("Patient_Email");

        Response.Redirect("Doctor_Account.aspx");
    }
}