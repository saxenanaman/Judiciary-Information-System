using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Judiciary_Information_System
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            String type = "";
            if(UserTypeRadioButtonList.SelectedIndex == 0)
            {
                type = "Judge";
            }
            else
            {
                type = "Lawyer";
            }
            String name = NameTextBox.Text;
            String email = emailTextBox2.Text;
            String phno = PhoneTextBox3.Text;
            String dob = Convert.ToString(DOBCalendar.SelectedDate);
            String Password = Password1TextBox.Text;

            SqlConnection usersDB = new SqlConnection();
            usersDB.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;" + "Initial Catalog=JIS;Integrated Security=SSPI";

            String insert_query;
            insert_query = "INSERT INTO USERS (";
            insert_query += "type, name, email, ph_no, dob, password, cases_viewed) ";
            insert_query += "VALUES ('";
            insert_query += type + "', '";
            insert_query += name + "', '";
            insert_query += email + "', '";
            insert_query += phno + "', '";
            insert_query += dob+"', '";
            insert_query += Password + "', '";
            insert_query += "0')";
            SqlCommand insertCommand = new SqlCommand(insert_query, usersDB);

            int added;
            try
            {
                usersDB.Open();
                added = insertCommand.ExecuteNonQuery();
                //Response.Redirect();
            }
            catch(Exception error)
            {
                CreateCaseLabel.Text = "Error inserting record";
                CreateCaseLabel.Text += error.Message;
            }
            finally
            {
                usersDB.Close();
            }
        }
    }
}