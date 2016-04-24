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
        /*  SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\noteSHAREdatabase.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO [UserAccount] (FirstName,LastName,Email,Password,SharePoints,Downloaded,Uploaded) values (@first,@last,@email,@pass,@points,@down,@up)", conn);
        cmd.Parameters.AddWithValue("@first", FirstNameTextBox.Text);
        cmd.Parameters.AddWithValue("@last", LastNameTextBox.Text);
        cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
        cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
        cmd.Parameters.AddWithValue("@points", "0");
        cmd.Parameters.AddWithValue("@down", "0");
        cmd.Parameters.AddWithValue("@up", "0");

        if (PassTextBox.Text == ConfPassTextBox.Text)
        {

            Server.Transfer("Dashboard.aspx");
        } */

        string _query = "INSERT INTO [UserAccount] (FirstName,LastName,Email,Password,SharePoints,Downloaded,Uploaded) values (@first,@last,@email,@pass,@points,@down,@up)";
        using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\noteSHAREdatabase.mdf;Integrated Security=True"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@first", FirstNameTextBox.Text);
                comm.Parameters.AddWithValue("@last", LastNameTextBox.Text);
                comm.Parameters.AddWithValue("@email", EmailTextBox.Text);
                comm.Parameters.AddWithValue("@pass", PassTextBox.Text);
                comm.Parameters.AddWithValue("@points", "0");
                comm.Parameters.AddWithValue("@down", "0");
                comm.Parameters.AddWithValue("@up", "0");
                if (PassTextBox.Text == ConfPassTextBox.Text)
                {
                    Application["Email"] = EmailTextBox.Text;
                    conn.Open();
                    comm.ExecuteNonQuery();
                    Server.Transfer("Dashboard.aspx");
                }
            }
        }
    }
}