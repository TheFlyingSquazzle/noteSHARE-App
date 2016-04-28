using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class BrowseNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DownloadButton_Click(object sender, EventArgs e)
    {
        string filepath = "~/Notes/";
        FileInfo file = new FileInfo(filepath + Application["val"]);

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

    protected void NoteRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
           // Label lbl = e.Item.FindControl("Title") as Label;
           // string l = lbl.Text;
           // Application["val"] = l;
        }
    }
}