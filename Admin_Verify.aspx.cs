using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Verify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* .................From Doctor_Profile Database..........................*/

        string doc_email = Session["Doc_Email"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email AND Approve='No'", con);
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

            string national_id = Convert.ToString(dr[5]);
            Label_national_id.Text = national_id;

            string date_birth = Convert.ToString(dr[6]);
            Label_date_birth.Text = date_birth;

            string location = Convert.ToString(dr[7]);
            Label_location.Text = location;

            string college = Convert.ToString(dr[8]);
            Label_college.Text = college;

            string degree_year = Convert.ToString(dr[9]);
            Label_degree_year.Text = degree_year;

            string doctor_id = Convert.ToString(dr[10]);
            Label_doctor_id.Text = doctor_id;

            string specialist = Convert.ToString(dr[11]);
            Label_specialist.Text = specialist;
        }
        con.Close();

        /* .......................National_Id_Db Database ..............................*/

        string n_id = Session["National_Id"].ToString();

        string constr1 = ConfigurationManager.ConnectionStrings["Id_ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(constr1);
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM National_Id_Db WHERE National_Id = @National_Id AND Approve='No'", con1);
        con1.Open();
        cmd1.Parameters.AddWithValue("@National_Id", n_id);
        SqlDataReader dr1;
        dr1 = cmd1.ExecuteReader();

        while (dr1.Read())
        {
            Label_national_id_db.Text = n_id;

            string doc_name_ni = Convert.ToString(dr1[2]);
            Label_doc_name_ni.Text = doc_name_ni;

            string father_name = Convert.ToString(dr1[3]);
            Label_father_name.Text = father_name;

            string mother_name = Convert.ToString(dr1[4]);
            Label_mother_name.Text = mother_name;

            string date_birth_ni = Convert.ToString(dr1[5]);
            Label_date_birth_ni.Text = date_birth_ni;

            string location_ni = Convert.ToString(dr1[6]);
            Label_location_ni.Text = location_ni;
        }
        con1.Close();

        /*..................................Doctor_Id_Db Database.............................*/

        string d_id = Session["Doctor_Id"].ToString();

        string constr2 = ConfigurationManager.ConnectionStrings["Id_ConnectionString"].ConnectionString;
        SqlConnection con2 = new SqlConnection(constr2);
        SqlCommand cmd2 = new SqlCommand("SELECT * FROM Doctor_Id_Db WHERE Doctor_Id = @Doctor_Id AND Approve='No'", con2);
        con2.Open();
        cmd2.Parameters.AddWithValue("@Doctor_Id", d_id);
        SqlDataReader dr2;
        dr2 = cmd2.ExecuteReader();

        while (dr2.Read())
        {
            Label_doc_id_db.Text = d_id;

            string doc_name_di = Convert.ToString(dr2[2]);
            Label_doc_name_di.Text = doc_name_di;

            string date_birth_di = Convert.ToString(dr2[3]);
            Label_date_birth_di.Text = date_birth_di;

            string location_di = Convert.ToString(dr2[4]);
            Label_location_di.Text = location_di;

            string college_di = Convert.ToString(dr2[5]);
            Label_college_di.Text = college_di;

            string ad_year = Convert.ToString(dr2[6]);
            Label_ad_year.Text = ad_year;

            string pass_year = Convert.ToString(dr2[7]);
            Label_pass_year.Text = pass_year;

            string di_year = Convert.ToString(dr2[8]);
            Label_di_year.Text = di_year;

            string specialist_di = Convert.ToString(dr2[9]);
            Label_specialist_di.Text = specialist_di;
        }

        con2.Close();
    }
    protected void Button_approve_Click(object sender, EventArgs e)
    {
        /* ..............Set Approve='Yes' to Doctor_Profile Database..............*/

        string doc_email = Session["Doc_Email"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("UPDATE Doctor_Profile SET Approve='Yes' WHERE Doc_Email=@Doc_Email", con);
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        /* ..............Set Approve='Yes' to National_Id_Db Database..............*/

        string national_id = Session["National_Id"].ToString();

        string constr1 = ConfigurationManager.ConnectionStrings["Id_ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(constr1);
        SqlCommand cmd1 = new SqlCommand("UPDATE National_Id_Db SET Approve='Yes' WHERE National_Id=@National_Id", con1);
        cmd1.Parameters.AddWithValue("@National_Id", national_id);
        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        /* ..............Set Approve='Yes' to Doctor_Id_Db Database..............*/

        string doctor_id = Session["Doctor_Id"].ToString();

        string constr2 = ConfigurationManager.ConnectionStrings["Id_ConnectionString"].ConnectionString;
        SqlConnection con2 = new SqlConnection(constr2);
        SqlCommand cmd2 = new SqlCommand("UPDATE Doctor_Id_Db SET Approve='Yes' WHERE Doctor_Id=@Doctor_Id", con2);
        cmd2.Parameters.AddWithValue("@Doctor_Id", doctor_id);
        con2.Open();
        cmd2.ExecuteNonQuery();
        con2.Close();

        Response.Redirect("Admin_Page.aspx");
    }
    protected void Button_reject_Click(object sender, EventArgs e)
    {
        string doc_email = Session["Doc_Email"].ToString();

        string constr = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("DELETE FROM Doctor_Profile WHERE Doc_Email=@Doc_Email", con);
        cmd.Parameters.AddWithValue("@Doc_Email", doc_email);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Admin_Page.aspx");
    }
}