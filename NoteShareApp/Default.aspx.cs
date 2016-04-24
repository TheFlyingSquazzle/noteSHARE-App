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
        SqlDataReader reader = null;
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\noteSHAREdatabase.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from UserAccount where Email=@email and Password=@pass", conn);
        cmd.Parameters.AddWithValue("@email", Email_Login_TextBox.Text);
        cmd.Parameters.AddWithValue("@pass", Password_Login_TextBox.Text);
        reader = cmd.ExecuteReader();
        if (reader != null && reader.HasRows)
        {
            Application["Email"] = Email_Login_TextBox.Text;
            Server.Transfer("Dashboard.aspx");
        }



    }
}