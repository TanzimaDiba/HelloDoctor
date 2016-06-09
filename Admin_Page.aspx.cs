using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button_Click_Verify(object sender, CommandEventArgs e)
    {

        string doc_email = Convert.ToString(e.CommandArgument);
        string national_id = null, doctor_id = null;

        string constr1 = ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(constr1);
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM Doctor_Profile WHERE Doc_Email = @Doc_Email AND Approve='No'", con1);
        con1.Open();
        cmd1.Parameters.AddWithValue("@Doc_Email", doc_email);
        SqlDataReader dr;
        dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            national_id = Convert.ToString(dr[5]);
            doctor_id = Convert.ToString(dr[10]);
        }
        con1.Close();

        Session["Doc_Email"] = doc_email;
        Session["National_Id"] = national_id;
        Session["Doctor_Id"] = doctor_id;

        Response.Redirect("Admin_Verify.aspx");

    }
}