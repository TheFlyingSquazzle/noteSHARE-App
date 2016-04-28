using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class AccountSettings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=notesharedb.database.windows.net;Initial Catalog=noteSHAREdb;Integrated Security=False;User ID=CTaylor3819;Password=DBpassword1;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select FirstName from UserAccount where Email=@email", conn);
        SqlCommand cmd1 = new SqlCommand("select LastName from UserAccount where Email=@email", conn);
        SqlCommand cmd2 = new SqlCommand("select Email from UserAccount where Email=@email", conn);
        SqlCommand cmd3 = new SqlCommand("select Password from UserAccount where Email=@email", conn);

        cmd.Parameters.AddWithValue("@email", Application["Email"]);
        cmd1.Parameters.AddWithValue("@email", Application["Email"]);
        cmd2.Parameters.AddWithValue("@email", Application["Email"]);
        cmd3.Parameters.AddWithValue("@email", Application["Email"]);

        NameLabel.Text = (String)cmd.ExecuteScalar().ToString() + " " + (String)cmd1.ExecuteScalar().ToString();
        EmailLabel.Text = (String)cmd2.ExecuteScalar().ToString();
        PassLabel.Text = (String)cmd3.ExecuteScalar().ToString();
        PassTextBox.Text = (String)cmd3.ExecuteScalar().ToString();

    }

    protected void AccountSettingsDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void ChangePassButton_Click(object sender, EventArgs e)
    {
        ChangePassDataSource.Update();
        PassLabel.Text = ChangePassDataSource.Select(DataSourceSelectArguments.Empty).ToString();
    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        DeleteDataSource.Delete();
        Server.Transfer("Default.aspx");
    }
}