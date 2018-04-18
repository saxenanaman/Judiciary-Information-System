using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Judiciary_Information_System
{
    public partial class CreateCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection casesDB = new SqlConnection();
            casesDB.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;" + "Initial Catalog=JIS;Integrated Security=SSPI";

            int cin = 0;


      
            String insert_query;
            insert_query = "INSERT INTO [Casedb] (";
            insert_query += " name_of_defendant, address_of_defendant, crime_type, date_committed, location, name_of_arresting_officer, date_of_arrest, estimated_completion_date, starting_date, name_of_public_prosecutor, name_of_presiding_judge, summary_of_judgement, summary_of_proceedings, reason_of_adjournment, date_to_schedule,status) ";
            insert_query += "VALUES ('";
            insert_query += DefendantName_TextBox.Text + "', '";
            insert_query +=  DefendantAddress_TextBox.Text+ "', '";
            insert_query += CrimeType_TextBox.Text + "', ";
            //insert_query += DateOfCrime_Calendar.SelectedDate + "', '";
            insert_query += "@d1, '";
            insert_query += LocationOfCrime_TextBox.Text + "', '";
            insert_query += NameOfInvOff_TextBox.Text +"', ";
            //insert_query += DateOfArrest_Calendar.SelectedDate + "', '";
            insert_query +=  "@d2, '";
            insert_query += null +"', '";
            insert_query += null +"', '";
            insert_query += null +"', '";
            insert_query += null +"', '";
            insert_query += null +"', '";
            insert_query += null + "', '";
            insert_query += null + "', ";
            //insert_query += DateToSchedule_Calendar.SelectedDate+"', '";
            insert_query +=  "@d3,'";
            insert_query += "open" + "');";
            SqlCommand insertCommand = new SqlCommand(insert_query, casesDB);
            insertCommand.Parameters.Add("@d1", SqlDbType.Date).Value = DateOfCrime_Calendar.SelectedDate;
            insertCommand.Parameters.Add("@d2", SqlDbType.Date).Value = DateOfArrest_Calendar.SelectedDate;
            insertCommand.Parameters.Add("@d3", SqlDbType.Date).Value = DateToSchedule_Calendar.SelectedDate;

            int added;
            try
            {
                casesDB.Open();
                added = insertCommand.ExecuteNonQuery();
                //Response.Redirect();
                Label1.Text = added.ToString();
            }
            catch (Exception error)
            {
                Label1.Text = "Error inserting record";
                Label1.Text += error.Message;
            }
            finally
            {
                casesDB.Close();
                Response.Redirect("Registrar_home.aspx");
            }
            //Write to FIle
           
        }
    }
}