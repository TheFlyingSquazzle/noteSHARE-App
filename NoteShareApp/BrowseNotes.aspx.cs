using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class BrowseNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DownloadButton_Click(object sender, EventArgs e) //
    {
        //SQL connection and commands to update SharePoints and Downloaded Notes
        SqlConnection conn = new SqlConnection(@"Data Source=notesharedb.database.windows.net;Initial Catalog=noteSHAREdb;Integrated Security=False;User ID=CTaylor3819;Password=DBpassword1;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        conn.Open();
        SqlCommand cmd = new SqlCommand("Update [UserAccount] set SharePoints = SharePoints - 5, Downloaded = Downloaded + 1 where Email = @email", conn);
        cmd.Parameters.AddWithValue("@email", Application["Email"]);
        cmd.ExecuteScalar();

        //The following gets the file location on the server and downloads to the client
        var dataFileName = Environment.GetEnvironmentVariable("HOME").ToString();
        string filepath = "\\Notes\\";
        FileInfo file = new FileInfo(dataFileName + "\\site\\wwwroot\\" + filepath + Application["val"]);

        Response.Clear();

        Response.ClearHeaders();

        Response.ClearContent();

        Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);

        Response.AddHeader("Content-Length", file.Length.ToString());

       // Response.ContentType = "";

        Response.Flush();

        Response.TransmitFile(file.FullName);

        Response.End();
    }


    protected void NotesGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        Application["val"] = NotesGridView.SelectedValue.ToString();  //get selected value from gridview
    }

    protected void NotesTimer_Tick(object sender, EventArgs e)
    {
        NotesGridView.DataBind(); //refreshed the gridview in case more notes were entered by other users
    }
}