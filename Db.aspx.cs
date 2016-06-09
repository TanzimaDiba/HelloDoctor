using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Db : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Doctor_Profile] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Doctor_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Doctor_Serial] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Patient_Registration_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Patient_Registration] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Prescription_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Prescription] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Online_Payment_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Online_Payment] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Review_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Review] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Admin_Edit_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Admin_Edit] Where Id is Not NULL;";
            SqlCommand com = new SqlCommand(delete_user, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            Response.Write("Delete All");
            Response.Redirect("Db.aspx");
        }
    }
}