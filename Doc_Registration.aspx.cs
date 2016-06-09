using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doc_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_submit_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@Doc_Email", this.TextBox_email.Text.Trim());
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
                            using (SqlCommand cmd2 = new SqlCommand("INSERT INTO Doctor_Profile (Doc_Email, Password, Personal_Contact, Doc_Name, National_Id, Date_Birth, Location, College, Degree_Year, Doctor_Id, Specialist, Approve, Qualification, Clinic_Name, Clinic_Address, Visiting_Time, Off_Day, Fee, Clinic_Contact, Doc_Bank, Doc_Bank_Account) values(@Doc_Email, @Password, @Personal_Contact, @Doc_Name, @National_Id, @Date_Birth, @Location, @College, @Degree_Year, @Doctor_Id, @Specialist, @Approve, @Qualification, @Clinic_Name, @Clinic_Address, @Visiting_Time, @Off_Day, @Fee, @Clinic_Contact, @Doc_Bank, @Doc_Bank_Account)", con2))
                            {
                                con2.Open();
                                cmd2.Parameters.AddWithValue("@Doc_Email", TextBox_email.Text);
                                cmd2.Parameters.AddWithValue("@Password", TextBox_password.Text);
                                cmd2.Parameters.AddWithValue("@Personal_Contact", TextBox_contact.Text);
                                cmd2.Parameters.AddWithValue("@Doc_Name", TextBox_name.Text);
                                cmd2.Parameters.AddWithValue("@National_Id", TextBox_national_id.Text);
                                cmd2.Parameters.AddWithValue("@Date_Birth", TextBox_birth.Text);
                                cmd2.Parameters.AddWithValue("@Location", DropDownList_location.SelectedItem.ToString());
                                cmd2.Parameters.AddWithValue("@College", TextBox_college.Text);
                                cmd2.Parameters.AddWithValue("@Degree_Year", TextBox_year_pass.Text);
                                cmd2.Parameters.AddWithValue("@Doctor_Id", TextBox_doctor_id.Text);
                                cmd2.Parameters.AddWithValue("@Specialist", DropDownList_Specialist.SelectedItem.ToString());
                                cmd2.Parameters.AddWithValue("@Approve", "No");
                                cmd2.Parameters.AddWithValue("@Qualification", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Clinic_Name", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Clinic_Address", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Visiting_Time", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Off_Day", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Fee", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Clinic_Contact", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Doc_Bank", "Not set yet");
                                cmd2.Parameters.AddWithValue("@Doc_Bank_Account", "Not set yet");
                                cmd2.ExecuteNonQuery();
                                con2.Close();
                            }
                        }
                        Response.Redirect("Doc_Reg_Confirm.aspx");
                    }

                }
            }
        }
    }
}