using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

using System.Data.SqlClient;


namespace Judiciary_Information_System
{
    public partial class login_main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            String username = Username_TextBox.Text;
            String password = Password_TextBox.Text;
            
            if(username.Equals("registrar"))
            {
                if(password.Equals("registrar"))
                {
                    HttpCookie user = new HttpCookie("user");
                    user["username"] = Username_TextBox.Text;
                    user.Expires = DateTime.Now.AddHours(1);
                    Response.Cookies.Add(user);
                    Response.Redirect("Registrar_home.aspx");
                }
                else
                {
                    LoginLabel.Text = "<b>You are </b> ";
                }
            }
            else
            {
                SqlConnection usersDB = new SqlConnection();
                usersDB.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;" + "Initial Catalog=JIS;Integrated Security=SSPI";
                try
                {   
                    usersDB.Open();
                    //LoginLabel.Text = "<b>Server Version:</b> " + usersDB.ServerVersion;
                    //LoginLabel.Text += "<br /><b>Connection Is:</b> " + usersDB.State.ToString();
                    SqlCommand login_command = new SqlCommand();
                    login_command.Connection = usersDB;
                    login_command.CommandText = "SELECT email FROM Users WHERE email='"+username+"' AND password='"+password+"';";

                    SqlDataReader loginReader;
                    loginReader = login_command.ExecuteReader();
                    loginReader.Read();
                    if(loginReader["email"].Equals(username))
                    {
                        HttpCookie user = new HttpCookie("user");
                        user["username"] =  Username_TextBox.Text;
                        user.Expires = DateTime.Now.AddHours(1);
                        Response.Cookies.Add(user);
                        Response.Redirect("UserHome.aspx");
                    }
                    else
                    {
                        
                    }
                }
                catch (Exception error)
                {
                    //LoginLabel.Text = "Error reading the database. ";
                    //LoginLabel.Text += error.Message;
                    InvalidMessage.Text = "Invalid Credentials";
                }
                finally
                {
                    usersDB.Close();
                    //LoginLabel.Text += "<br /><b>Now Connection Is:</b> ";
                    LoginLabel.Text += usersDB.State.ToString();
                }


            }



        }
    }
}