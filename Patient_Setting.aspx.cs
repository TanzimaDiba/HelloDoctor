using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_Setting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string patient_email = Session["Patient_Email"].ToString();
        string mesg=null;

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", patient_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            mesg = Convert.ToString(dr[7]);
        }
        con.Close();

        if (mesg != null)
        {
            Label_mesg.Text = "Your password has been changed at " + mesg;
        }
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
    protected void Button_save_Click(object sender, EventArgs e)
    {
        string patient_email = Session["Patient_Email"].ToString();
        string current_pswd = TextBox_current.Text;

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", patient_email);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            string db_pswd = Convert.ToString(dr[6]);
            if (db_pswd == current_pswd)
            {
                toChangePassword();
                break;
            }
            else
            {
                Label_mesg.Text = "Your current password is not coorect.";
            }
        }
        con.Close();
    }

    protected void toChangePassword()
    {
        string patient_email = Session["Patient_Email"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("UPDATE Patient_Registration SET Password = @Password, Change_Pswd_Time=@Change_Pswd_Time WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", patient_email);
        cmd.Parameters.AddWithValue("@Password", TextBox_new.Text);
        cmd.Parameters.AddWithValue("@Change_Pswd_Time", DateTime.Now.ToLongDateString());
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Patient_Setting.aspx");
    }
}