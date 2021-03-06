﻿using System;
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
        string serverPath = Server.MapPath("~/Notes/"); //Path to save notes

        if (FileUploader.HasFile) //Checks to see if fileuploader has a file (If so then proceed)
        {
            FileUploader.PostedFile.SaveAs(serverPath + FileUploader.FileName); //Saves the file to the path


            //SQL Connection and Query in order to insert Note information.
            SqlConnection conn = new SqlConnection(@"Data Source=notesharedb.database.windows.net;Initial Catalog=noteSHAREdb;Integrated Security=False;User ID=CTaylor3819;Password=DBpassword1;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into [Notes] (Title,Subjects,Price,UserID) values (@title,@subject,@price,@user)", conn);
            SqlCommand cmd1 = new SqlCommand("Update [UserAccount] set SharePoints = SharePoints + 10, Uploaded = Uploaded + 1 where Email=@email", conn); // Changes data for dashboard and user

            cmd.Parameters.AddWithValue("@title", FileUploader.FileName);
            cmd.Parameters.AddWithValue("@subject", Application["Subject"]);
            cmd.Parameters.AddWithValue("@price", 5);
            cmd.Parameters.AddWithValue("@user", Session["UserID"]);
            cmd1.Parameters.AddWithValue("@email", Application["Email"]);

            cmd.ExecuteScalar();
            cmd1.ExecuteScalar();
            
            PopUpLabel.Text = FileUploader.FileName + " has been uploaded!";  //Verify file was uploaded

        }
    }
}