using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Online_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string amount = toGetAmount();
        Label_amount.Text = amount;
    }

    protected string toGetDoctorName()
    {
        string doc_name = null;
        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            doc_name = Convert.ToString(dr[4]);
        }
        con.Close();


        return doc_name;
    }


    protected string toGetPatientName()
    {
        string patient_name = null;

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", Session["Patient_Email"].ToString());
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            patient_name = Convert.ToString(dr[1]);
        }
        con.Close();

        return patient_name;
    }

    protected string toGetDoctorBank()
    {
        string doc_bank = null;

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            doc_bank = Convert.ToString(dr[20]);
        }
        con.Close();

        return doc_bank;
    }

    protected string toDoctorAccount()
    {
        string doc_account = null;

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            doc_account = Convert.ToString(dr[21]);
        }
        con.Close();

        return doc_account;
    }

    protected string toGetAmount()
    {
        string amount = null;

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            amount = Convert.ToString(dr[18]);
        }
        con.Close();

        return amount;
    }

    protected string toGetAppointmentDate()
    {
        string appointment_date = null;
        string constr3 = ConfigurationManager.ConnectionStrings["Prescription_ConnectionString"].ConnectionString;
        SqlConnection con3 = new SqlConnection(constr3);
        SqlCommand cmd3 = new SqlCommand("SELECT * FROM Prescription WHERE Doc_Email = @Doc_Email AND Patient_Email=@Patient_Email", con3);

        con3.Open();
        cmd3.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        cmd3.Parameters.AddWithValue("@Patient_Email", Session["Patient_Email"].ToString());
        SqlDataReader dr;
        dr = cmd3.ExecuteReader();

        while (dr.Read())
        {
            appointment_date = Convert.ToString(dr[3]);
        }
        con3.Close();

        return appointment_date;
    }

    protected string toGetSerialNo()
    {
        string serial_no = null;
        string constr3 = ConfigurationManager.ConnectionStrings["Prescription_ConnectionString"].ConnectionString;
        SqlConnection con3 = new SqlConnection(constr3);
        SqlCommand cmd3 = new SqlCommand("SELECT * FROM Prescription WHERE Doc_Email = @Doc_Email AND Patient_Email=@Patient_Email", con3);

        con3.Open();
        cmd3.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        cmd3.Parameters.AddWithValue("@Patient_Email", Session["Patient_Email"].ToString());
        SqlDataReader dr;
        dr = cmd3.ExecuteReader();

        while (dr.Read())
        {
            serial_no = Convert.ToString(dr[4]);
        }
        con3.Close();

        return serial_no;
    }

    protected void Button_yes_Click(object sender, EventArgs e)
    {
        string doc_name = toGetDoctorName();
        string patient_name = toGetPatientName();

        /*........................Online_Payment database.............................................*/

        string doc_bank = toGetDoctorBank();
        string doc_account = toDoctorAccount();
        string amount = toGetAmount();

        string constr = ConfigurationManager.ConnectionStrings["Online_Payment_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("INSERT INTO Online_Payment (Doc_Email, Doc_Name, Doc_Bank, Doc_Account_No, Patient_Email, Patient_Name, Patient_Bank, Patient_Account_No, Patient_Card, Patient_Card_No, Amount, Date) values(@Doc_Email, @Doc_Name, @Doc_Bank, @Doc_Account_No, @Patient_Email, @Patient_Name, @Patient_Bank, @Patient_Account_No, @Patient_Card, @Patient_Card_No, @Amount, @Date)", con);

        con.Open();
        cmd.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        cmd.Parameters.AddWithValue("@Doc_Name", doc_name);
        cmd.Parameters.AddWithValue("@Doc_Bank", doc_bank);
        cmd.Parameters.AddWithValue("@Doc_Account_No", doc_account);
        cmd.Parameters.AddWithValue("@Patient_Email", Session["Patient_Email"].ToString());
        cmd.Parameters.AddWithValue("@Patient_Name", patient_name);
        cmd.Parameters.AddWithValue("@Patient_Bank", TextBox_bank.Text);
        cmd.Parameters.AddWithValue("@Patient_Account_No", TextBox_account_no.Text);
        cmd.Parameters.AddWithValue("@Patient_Card", DropDownList_pay.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@Patient_Card_No", TextBox_card_no.Text);
        cmd.Parameters.AddWithValue("@Amount", amount);
        cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToShortDateString());
        cmd.ExecuteNonQuery();
        con.Close();
        con.Close();

        /*.......................Increase Current Serial In Doctor_Serial Database..........................*/

        string appointment_date = toGetAppointmentDate();
        string serial_no = toGetSerialNo();

        int serial_db = Convert.ToInt32(serial_no);
        string serial_update = serial_db.ToString();

        string constr0 = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con0 = new SqlConnection(constr0);
        SqlCommand cmd0 = new SqlCommand("UPDATE Doctor_Serial SET Current_Serial=@Current_Serial WHERE Doc_Email = @Doc_Email AND Appointment_Date=@Appointment_Date", con0);
        con0.Open();
        cmd0.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        cmd0.Parameters.AddWithValue("@Appointment_Date", appointment_date);
        cmd0.Parameters.AddWithValue("@Current_Serial", serial_update);
        cmd0.ExecuteNonQuery();
        con0.Close();


        Session.Remove("Doc_Email");
        Session.Remove("Patient_Email");
        Response.Redirect("Appointment_Confirm.aspx");
    }
    protected void Button_no_Click(object sender, EventArgs e)
    {
        Response.Redirect("Take_Appointment.aspx");
    }
}