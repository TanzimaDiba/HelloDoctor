using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Db1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Id_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [National_Id_Db] Where Id is Not NULL;";
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
    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Id_ConnectionString"].ConnectionString);
            conn.Open();
            string delete_user = "Delete FROM [Doctor_Id_Db] Where Id is Not NULL;";
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