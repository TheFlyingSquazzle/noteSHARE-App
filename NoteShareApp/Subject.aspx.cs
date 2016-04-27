using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Subject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void NextButton_Click(object sender, EventArgs e)
    {

        NotesUpload.Insert();
        // Application["NoteID"] = NotesUpload.Select(DataSourceSelectArguments.Empty);
        Server.Transfer("UploadNotes.aspx");

    }
}