using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Judiciary_Information_System
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie user = new HttpCookie("user");
            user = Request.Cookies["user"];

            if (Convert.ToInt32(Request.QueryString["logout"]) == 1 || user["username"] == null)
            {

                try
                {
                    user.Expires = DateTime.Now.AddHours(-1);
                    Response.Cookies.Add(user);
                    Response.Redirect("login_main.aspx");
                }
                catch (Exception err)
                {
                    Label1.Text = "Logout issues. " + err.ToString();
                }

            }


            try
            {
                Label1.Text = "Hello Mr. " + user["username"];
            }
            catch (Exception err)
            {
                Label1.Text += err.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            SqlConnection casesDB = new SqlConnection();
            casesDB.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;" + "Initial Catalog=JIS;Integrated Security=SSPI";
            String selectCIN = "SELECT * FROM Casedb WHERE CIN='" + SearchTextBox.Text + "';";
            SqlCommand cmd = new SqlCommand(selectCIN, casesDB);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet byCIN = new DataSet();

            try
            {
                casesDB.Open();
                adapter.Fill(byCIN, "Casedb");

                GridView1.DataSource = byCIN;
                GridView1.DataBind();

                //SqlCommand searchByCIN = new SqlCommand();
                //searchByCIN.Connection = casesDB;
                //searchByCIN.CommandText = "SELECT * FROM Casedb WHERE CIN='" + SearchTextBox.Text + "';";
                //SqlDataReader searchReader;
                //searchReader = searchByCIN.ExecuteReader();
                //searchReader.Read();
                //Label1.Text = Convert.ToString(searchReader["name_of_defendant"]);
                //CINdata.Load(searchReader);
            }
            catch (Exception err)
            {
                Label1.Text = "Invalid";
            }
            finally
            {
                casesDB.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection casesDB = new SqlConnection();
            casesDB.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;" + "Initial Catalog=JIS;Integrated Security=SSPI";
            String selectCIN = "SELECT * FROM Casedb;";
            SqlCommand cmd = new SqlCommand(selectCIN, casesDB);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet byCIN = new DataSet();

            try
            {
                casesDB.Open();
                adapter.Fill(byCIN, "Casedb");

                GridView1.DataSource = byCIN;
                GridView1.DataBind();

                //SqlCommand searchByCIN = new SqlCommand();
                //searchByCIN.Connection = casesDB;
                //searchByCIN.CommandText = "SELECT * FROM Casedb WHERE CIN='" + SearchTextBox.Text + "';";
                //SqlDataReader searchReader;
                //searchReader = searchByCIN.ExecuteReader();
                //searchReader.Read();
                //Label1.Text = Convert.ToString(searchReader["name_of_defendant"]);
                //CINdata.Load(searchReader);
            }
            catch (Exception err)
            {
                Label1.Text = "Invalid";
            }
            finally
            {
                casesDB.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            SqlConnection casesDB = new SqlConnection();
            casesDB.ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB;" + "Initial Catalog=JIS;Integrated Security=SSPI";
            String selectCIN = "SELECT * FROM Casedb WHERE crime_type='" + SearchTextBox.Text + "';";
            SqlCommand cmd = new SqlCommand(selectCIN, casesDB);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet byCIN = new DataSet();

            try
            {
                casesDB.Open();
                adapter.Fill(byCIN, "Casedb");

                GridView1.DataSource = byCIN;
                GridView1.DataBind();

                //SqlCommand searchByCIN = new SqlCommand();
                //searchByCIN.Connection = casesDB;
                //searchByCIN.CommandText = "SELECT * FROM Casedb WHERE CIN='" + SearchTextBox.Text + "';";

                //SqlDataReader searchReader;
                //searchReader = searchByCIN.ExecuteReader();
                //searchReader.Read();
                //Label1.Text = Convert.ToString(searchReader["name_of_defendant"]);
                //CINdata.Load(searchReader);


            }
            catch (Exception err)
            {
                Label1.Text = "Invalid";
            }
            finally
            {
                casesDB.Close();
            }
        }
    }
}