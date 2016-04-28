using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class UploadNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UploadButton_Click(object sender, EventArgs e)
    {
        string serverPath = Server.MapPath("~/Notes/");

        if (FileUploader.HasFile)
        {
            FileUploader.PostedFile.SaveAs(serverPath + FileUploader.FileName);

            SqlConnection conn = new SqlConnection(@"Data Source=notesharedb.database.windows.net;Initial Catalog=noteSHAREdb;Integrated Security=False;User ID=CTaylor3819;Password=DBpassword1;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into [Notes] (Title,Subjects,Price,UserID) values (@title,@subject,@price,@user)", conn);

            cmd.Parameters.AddWithValue("@title", FileUploader.FileName);
            cmd.Parameters.AddWithValue("@subject", Application["Subject"]);
            cmd.Parameters.AddWithValue("@price", 10);
            cmd.Parameters.AddWithValue("@user", Application["UserID"]);

            cmd.ExecuteScalar();

            PopUpLabel.Text = FileUploader.FileName + " has been uploaded!";

        }
    }
}