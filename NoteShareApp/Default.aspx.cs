using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void CreateAccountButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("CreateAccount.aspx");
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (LoginDataSource.Select(DataSourceSelectArguments.Empty) != null)
        {
            Application["Email"] = Email_Login_TextBox.Text;
            Server.Transfer("Dashboard.aspx");
        }
    }
}