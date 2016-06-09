using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Medical_Campaign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Section"] = "Medical_Campign";
    }
    protected void Button_done_Click(object sender, EventArgs e)
    {
        string date = TextBox_date.Text;
        string title = TextBox_title.Text;
        string news = TextBox_news.Text;
        string section = Session["Section"].ToString();

        if (FileUpload_image.PostedFile != null && FileUpload_image.PostedFile.FileName != "")
        {
            byte[] imageSize = new byte[FileUpload_image.PostedFile.ContentLength];
            HttpPostedFile uploadedImage = FileUpload_image.PostedFile;
            uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload_image.PostedFile.ContentLength);

            // Create SQL Connection 
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Admin_Edit_ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO Admin_Edit(Date, Title, Image, News, Section) VALUES (@Date, @Title, @Image, @News, @Section)";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            SqlParameter date_db = new SqlParameter("@Date", SqlDbType.NVarChar, 50);
            date_db.Value = date;
            cmd.Parameters.Add(date_db);

            SqlParameter title_db = new SqlParameter("@Title", SqlDbType.NVarChar, 50);
            title_db.Value = title;
            cmd.Parameters.Add(title_db);

            SqlParameter UploadedImage = new SqlParameter("@Image", SqlDbType.Image, imageSize.Length);
            UploadedImage.Value = imageSize;
            cmd.Parameters.Add(UploadedImage);

            SqlParameter news_db = new SqlParameter("@News", SqlDbType.NVarChar);
            news_db.Value = news;
            cmd.Parameters.Add(news_db);

            SqlParameter section_db = new SqlParameter("@Section", SqlDbType.NVarChar, 50);
            section_db.Value = section;
            cmd.Parameters.Add(section_db);

            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {
                Response.Redirect("Admin_Page.aspx");
            }
        }
      }
}