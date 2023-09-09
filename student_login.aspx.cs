using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using FUll_Website_Project.student;

namespace FUll_Website_Project
{
    public partial class student_login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void loginadminbtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup where username=@user and password=@pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", usernameTextBox.Text);

            cmd.Parameters.AddWithValue("@pass", passwordTextBox.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {

                Session["student_username"] = usernameTextBox.Text;

                Response.Redirect("student/studentindex.aspx");


            }
            else
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire(\r\n  'Failure!',\r\n  'Login Failed',\r\n  'error'\r\n)", true);


            }

            con.Close();

        }
    }
}