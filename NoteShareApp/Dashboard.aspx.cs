using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  DataView dv = (DataView)DashboardDataSource.Select(DataSourceSelectArguments.Empty);
      //  DataRowView drv = dv[0];

       // NotesUploadedLabel.Text = drv["NotesUploaded"].ToString()



        SqlDataReader reader = null;
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\noteSHAREdatabase.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Downloaded from UserAccount where Email=@email", conn);
        SqlCommand cmd1 = new SqlCommand("select Uploaded from UserAccount where Email=@email", conn);
        SqlCommand cmd2 = new SqlCommand("select SharePoints from UserAccount where Email=@email", conn);
        SqlCommand cmd3 = new SqlCommand("select FirstName from UserAccount where Email=@email", conn);
        SqlCommand cmd4 = new SqlCommand("select LastName from UserAccount where Email=@email", conn);
        cmd.Parameters.AddWithValue("@email", Application["Email"]);
        cmd1.Parameters.AddWithValue("@email", Application["Email"]);
        cmd2.Parameters.AddWithValue("@email", Application["Email"]);
        cmd3.Parameters.AddWithValue("@email", Application["Email"]);
        cmd4.Parameters.AddWithValue("@email", Application["Email"]);

        NotesUploadedLabel.Text = (String)cmd.ExecuteScalar().ToString();
        NotesDownloadedLabel.Text = (String)cmd1.ExecuteScalar().ToString();
        SharePointsLabel.Text = (String)cmd2.ExecuteScalar().ToString();
        NameLabel.Text = (String)cmd3.ExecuteScalar().ToString() + " " + (String)cmd4.ExecuteScalar().ToString();


    }

    protected void UploadNotesButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("UploadNotes.aspx");
    }
}