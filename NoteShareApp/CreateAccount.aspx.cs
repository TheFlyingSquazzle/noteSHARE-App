using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CreateAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void CreateAccountButton_Click(object sender, EventArgs e)
    {
                if (PassTextBox.Text == ConfPassTextBox.Text)  //checks to ensure that the passwords are the same
                {
                    Application["Email"] = EmailTextBox.Text;
                     CreateAccountDataSource.Insert(); //if passes are the same then create Email app var and create account
                    Server.Transfer("Dashboard.aspx"); //send to Dashboard
                }
    }
}