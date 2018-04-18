using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Judiciary_Information_System
{
    public partial class Registrar_home : System.Web.UI.Page
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
                    Label1.Text = user["username"];
                }
                catch (Exception err) {
                    Label1.Text = err.ToString();
                }
            
        }

        protected void RegNewUser_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void NewCase_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateCase.aspx");
        }

        protected void Close_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Case_close.aspx");
        }

        protected void Adjourn_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdjournCase.aspx");
        }

        protected void NewDetails_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDetails.aspx");
        }
    }
}