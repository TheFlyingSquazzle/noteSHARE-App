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


    protected void CreateAccountButton_Click(object sender, EventArgs e) //Sends user to create account page
    {
        Server.Transfer("CreateAccount.aspx");
    }

    protected void LoginButton_Click(object sender, EventArgs e) //Logins in the user
    {
        if (LoginDataSource.Select(DataSourceSelectArguments.Empty) != null) //Wont proceed if textboxes are blank
        {
            Application["Email"] = Email_Login_TextBox.Text;
            Server.Transfer("Dashboard.aspx");
        }
    }
}