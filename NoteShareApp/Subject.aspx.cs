using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Subject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void NextButton_Click(object sender, EventArgs e)
    {

        Application["Subject"] = DropDownList1.SelectedValue;  //Selected value of dropdown list is saved to app variable and sent to Upload Notes Page

        Server.Transfer("UploadNotes.aspx");

    }
}