using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Patient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Remember"] != null)
        {
            HttpCookie cookieRemember = Request.Cookies.Get("Remember");
            TextBox_email.Text = cookieRemember.Values["Patient_Email"];
            Response.Cookies["Remember"].Expires = DateTime.Now;
        }
    }
    protected void LogIn(object sender, EventArgs e)
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con);
            con.Open();
            cmd.Parameters.AddWithValue("@Patient_Email", TextBox_email.Text);

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                    string pwd = Convert.ToString(dr[6]);
                    if (TextBox_password.Text == pwd)
                    {
                        if (RememberMe.Checked)
                        {
                            HttpCookie cookieRemember = new HttpCookie("Remember");
                            cookieRemember.Values.Add("Patient_Email", TextBox_email.Text);
                            cookieRemember.Expires = DateTime.Now.AddDays(10);
                            Response.Cookies.Add(cookieRemember);
                        }
                        Session["Patient_Email"] = TextBox_email.Text;
                        Response.Redirect("Patient_Account.aspx");
                    }
                    else
                    {
                        Label_warning.Text = "Email or password does not match";
                    }
            }
            con.Close();
            }
        catch (Exception ex)
        {
            Label_warning.Visible = true;
            Label_warning.Text = ex.Message;
        }
        finally
        {

        }
    }
}