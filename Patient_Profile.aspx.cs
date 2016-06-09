using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
        con.Open();
        cmd.Parameters.AddWithValue("@Patient_Email", Session["Patient_Email"].ToString());
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            string name = Convert.ToString(dr[1]);
            Label_name.Text = name;

            string email = Convert.ToString(dr[2]);
            Label_email.Text = email;

            string gender = Convert.ToString(dr[3]);
            Label_gender.Text = gender;

            string age = Convert.ToString(dr[4]);
            Label_age.Text = age;

            string contact = Convert.ToString(dr[5]);
            Label_contact.Text = contact;
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
}