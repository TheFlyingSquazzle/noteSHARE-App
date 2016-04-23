using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class UploadNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Browse_Click(object sender, EventArgs e)
    {
        OpenFileDialog fdlg = new OpenFileDialog();
        fdlg.Title = "C# Corner Open File Dialog";
        fdlg.InitialDirectory = @"c:\";
        fdlg.Filter = "All files (*.*)|*.*|All files (*.*)|*.*";
        fdlg.FilterIndex = 2;
        fdlg.RestoreDirectory = true;
        if (fdlg.ShowDialog() == DialogResult.OK)
        {
            FileName.Text = fdlg.FileName;
        }
    }
}