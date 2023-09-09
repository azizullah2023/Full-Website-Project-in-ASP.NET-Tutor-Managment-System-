using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FUll_Website_Project
{

    public partial class student_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void resetcontrols (){
             nameTextBox.Text = "";
    fathernameTextBox.Text = "";
    surnameTextBox.Text = "";
   genderDropDownList.ClearSelection();
       ageTextBox.Text = "";
    CountryTextBox.Text = "";
   cityTextBox.Text = "";
 adrressTextarea.Text = "";
 standardTextBox.Text = "";
           subjectTextBox.Text = "";
     contactTextBox.Text = "";
       TutiontypeDropDownList.ClearSelection();
       tutorpreferedDropDownList.ClearSelection();
      usernameTextBox.Text = "";
       PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";




}


        protected void studentsignupbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {

                string querry = "insert into student_signup values(@name,@fname,@surname,@gender,@age,@country,@city,@adrress ,@standard,@goingto ,@subject ,@contactno  ,@tutiontype ,@tutorprefered ,@username ,@password)";
                SqlCommand cmd = new SqlCommand(querry, con);
                cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                cmd.Parameters.AddWithValue("@fname", fathernameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", surnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", genderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", ageTextBox.Text);
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", cityTextBox.Text);
                cmd.Parameters.AddWithValue("@adrress", adrressTextarea.Text);
                cmd.Parameters.AddWithValue("@standard", standardTextBox.Text);
                cmd.Parameters.AddWithValue("@goingto", goingtoDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", subjectTextBox.Text);
                cmd.Parameters.AddWithValue("@contactno", contactTextBox.Text);
                cmd.Parameters.AddWithValue("@tutiontype", TutiontypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tutorprefered", tutorpreferedDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", usernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire(\r\n  'Done!',\r\n  'Your Form Has Been Submitted!',\r\n  'success'\r\n)", true);

                    resetcontrols();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire(\r\n  'Failed!',\r\n  'Your Form Has Not Submitted!',\r\n  'error'\r\n)", true);

                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire(\r\n  'Failed!',\r\n  'Registration failed..." + usernameTextBox.Text + " already exist! ',\r\n  'error'\r\n)", true);

                }
                else {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire(\r\n  'Failed!',\r\n  'Registration failed..! ',\r\n  'error'\r\n)", true);

                }
            }
            finally {
                con.Close();
            }
            
            
        }
    }
}