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


        SqlConnection conn = new SqlConnection(@"Data Source=notesharedb.database.windows.net;Initial Catalog=noteSHAREdb;Integrated Security=False;User ID=CTaylor3819;Password=DBpassword1;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        conn.Open();
        SqlCommand cmd = new SqlCommand("Update [UserAccount] set SharePoints = SharePoints - 5, Downloaded = Downloaded + 1 where Email=@email", conn);
        cmd.Parameters.AddWithValue("@email", Application["Email"]);

        cmd.ExecuteScalar();
    }

    protected void NoteRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
           // Label lbl = e.Item.FindControl("Title") as Label;
           // string l = lbl.Text;
           // Application["val"] = l;
        }
    }

    protected void NotesGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        Application["val"] = NotesGridView.SelectedValue.ToString();
    }
}