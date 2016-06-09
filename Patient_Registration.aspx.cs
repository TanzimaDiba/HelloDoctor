using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Patient_Registration WHERE Patient_Email = @Patient_Email", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Patient_Email", this.TextBox_email.Text.Trim());
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        this.Label_warning.Visible = true;
                        con.Close();
                    }
                    else
                    {
                        using (SqlConnection con2 = new SqlConnection(constr))
                        {
                            using (SqlCommand cmd2 = new SqlCommand("INSERT INTO Patient_Registration (Patient_Name, Patient_Email, Gender, Age, Patient_Contact, Password) values(@Patient_Name, @Patient_Email, @Gender, @Age, @Patient_Contact, @Password)", con2))
                            {
                                con2.Open();
                                cmd2.Parameters.AddWithValue("@Patient_Name", TextBox_name.Text);
                                cmd2.Parameters.AddWithValue("@Patient_Email", TextBox_email.Text);
                                cmd2.Parameters.AddWithValue("@Gender", DropDownList_gender.SelectedItem.ToString());
                                cmd2.Parameters.AddWithValue("@Age", TextBox_age.Text);
                                cmd2.Parameters.AddWithValue("@Patient_Contact", TextBox_contact.Text);
                                cmd2.Parameters.AddWithValue("@Password", TextBox_password.Text);
                                cmd2.ExecuteNonQuery();
                                con2.Close();
                            }
                        }
                        Response.Redirect("Patient_Reg_Confirm.aspx");
                    }

                }
            }
        }
    }
}