using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Take_Appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string doc_name = toGetDoctorName();
        string appointment_date = toGetAppointmentDate();
        string serial_no = toGetSerialNo();

        Label_doc_name.Text = doc_name;
        Label_appointment_date.Text = appointment_date;
        Label_serial.Text = serial_no;
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

    protected string toGetAppointmentDate()
    {
        string appointment_date = null;

        string constr1 = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(constr1);
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM Doctor_Serial WHERE Doc_Email = @Doc_Email", con1);
        con1.Open();
        cmd1.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        int total_serial, current_serial;
        string serial_no = null;

        int[] ar = new int[100];
        int i = 0, take_date = 5000;
        while (dr1.Read())
        {
            DateTime d = Convert.ToDateTime(dr1[2]);
            int year = d.Year;
            int month = d.Month;
            int day = d.Day;
            ar[i] = year + month * 30 + day;
            if (ar[i] <= take_date)
            {
                appointment_date = Convert.ToString(dr1[2]);
                total_serial = Convert.ToInt32(dr1[3]);
                current_serial = Convert.ToInt32(dr1[4]);

                if (current_serial < total_serial)
                {
                    take_date = ar[i];
                    serial_no = (current_serial + 1).ToString();
                }
            }
            i++;
        }

        return appointment_date;
    }

    protected string toGetSerialNo()
    {
        string serial_no = null;

        string constr1 = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(constr1);
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM Doctor_Serial WHERE Doc_Email = @Doc_Email", con1);
        con1.Open();
        cmd1.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        int total_serial, current_serial;
        string appointment_date = null;

        int[] ar = new int[100];
        int i = 0, take_date = 5000;
        while (dr1.Read())
        {
            DateTime d = Convert.ToDateTime(dr1[2]);
            int year = d.Year;
            int month = d.Month;
            int day = d.Day;
            ar[i] = year + month * 30 + day;
            if (ar[i] <= take_date)
            {
                appointment_date = Convert.ToString(dr1[2]);
                total_serial = Convert.ToInt32(dr1[3]);
                current_serial = Convert.ToInt32(dr1[4]);

                if (current_serial < total_serial)
                {
                    take_date = ar[i];
                    serial_no = (current_serial + 1).ToString();
                }
            }
            i++;
        }

        return serial_no;
    }

    protected void Button_yes_Click(object sender, EventArgs e)
    {
        string payment_method = null;

        if (CheckBox_cash.Checked)
        {
            payment_method = "Cash";
            toDoubleDatabase(payment_method);
        }
        else if (CheckBox_online.Checked)
        {
            payment_method = "Online";
            toDoubleDatabase(payment_method);
        }

        else
        {
            Label_warning.Visible = true;
            Label_warning.Text = "You have to select a payment method";
        }
    }

    protected void toDoubleDatabase(string payment_method)
    {
        string doc_name = toGetDoctorName();
        string appointment_date = toGetAppointmentDate();
        string serial_no = toGetSerialNo();

        /*......................................Patient_Registration database create.................. */

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Patient_Email", TextBox_patient_email.Text.Trim());
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Label_warning.Visible = true;
                        Label_warning.Text = "Email already exists";
                        con.Close();
                    }
                    else
                    {
                        using (SqlConnection con2 = new SqlConnection(constr))
                        {
                            using (SqlCommand cmd2 = new SqlCommand("INSERT INTO Patient_Registration (Patient_Name, Patient_Email, Gender, Age, Patient_Contact, Password) values(@Patient_Name, @Patient_Email, @Gender, @Age, @Patient_Contact, @Password)", con2))
                            {
                                con2.Open();
                                cmd2.Parameters.AddWithValue("@Patient_Name", TextBox_patient_name.Text);
                                cmd2.Parameters.AddWithValue("@Patient_Email", TextBox_patient_email.Text);
                                cmd2.Parameters.AddWithValue("@Gender", DropDownList_gender.SelectedItem.ToString());
                                cmd2.Parameters.AddWithValue("@Age", TextBox_age.Text);
                                cmd2.Parameters.AddWithValue("@Patient_Contact", TextBox_contact.Text);
                                cmd2.Parameters.AddWithValue("@Password", TextBox_password.Text);
                                cmd2.ExecuteNonQuery();
                                con2.Close();
                            }
                        }
                    }

                }
            }
        }

        /*..................................Prescription database create.................................... */

        string constr3 = ConfigurationManager.ConnectionStrings["Prescription_ConnectionString"].ConnectionString;
        SqlConnection con3 = new SqlConnection(constr3);
        SqlCommand cmd3 = new SqlCommand("INSERT INTO Prescription (Doc_Name, Doc_Email, Appointment_Date, Serial_No, Patient_Email, Paid, Payment_Method, No_Visit, Patient_Name) values(@Doc_Name, @Doc_Email, @Appointment_Date, @Serial_No, @Patient_Email, @Paid, @Payment_Method, @No_Visit, @Patient_Name)", con3);

        con3.Open();
        cmd3.Parameters.AddWithValue("@Doc_Name", doc_name);
        cmd3.Parameters.AddWithValue("@Doc_Email", Session["Doc_Email"].ToString());
        cmd3.Parameters.AddWithValue("@Appointment_Date", appointment_date);
        cmd3.Parameters.AddWithValue("@Serial_No", serial_no);
        cmd3.Parameters.AddWithValue("@Patient_Email", TextBox_patient_email.Text);
        cmd3.Parameters.AddWithValue("@Paid", "No");
        cmd3.Parameters.AddWithValue("@Payment_Method", payment_method);
        cmd3.Parameters.AddWithValue("@No_Visit", "1");
        cmd3.Parameters.AddWithValue("@Patient_Name", TextBox_patient_name.Text);
        cmd3.ExecuteNonQuery();
        con3.Close();
        con3.Close();

        if (payment_method == "Online")
        {
            Session["Patient_Email"] = TextBox_patient_email.Text;
            Response.Redirect("Online_Payment.aspx");
        }
        else
        {
            /*.......................Increase Current Serial In Doctor_Serial Database..........................*/

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
            Response.Redirect("Appointment_Confirm.aspx");
        }
            
    }
    protected void Button_no_Click(object sender, EventArgs e)
    {
        Response.Redirect("Find_Doctor.aspx");
    }
}