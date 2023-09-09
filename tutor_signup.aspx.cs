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
    public partial class tutor_signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void resetcontrols()
        {
            nameTextBox.Text = "";
            
            surnameTextBox.Text = "";
            genderDropDownList.ClearSelection();
            ageTextBox.Text = "";
            CountryTextBox.Text = "";
            cityTextBox.Text = "";
            adrressTextarea.Text = "";
            contactTextBox.Text = "";
            usernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
            emailTextBox.Text = "";
            MartialDropDownList.ClearSelection();
            QualificationDropDownList.ClearSelection();
            degreeeTextBox.Text = "";
            ExperinceDropDownList.ClearSelection(); 
        }
        protected void tutorsignupbtn_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(cs);
            try
            {

                string querry = "insert into tutor_signup values(@name ,@surname  ,@gender  ,@age ,@email  ,@marital_status  ,@country ,@city,@address ,@qualification ,@degree ,@experience ,@contactno ,@username  ,@password)";
                SqlCommand cmd = new SqlCommand(querry, con);
                cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", surnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", genderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", ageTextBox.Text);
                cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
                cmd.Parameters.AddWithValue("@marital_status", MartialDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", cityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", adrressTextarea.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", degreeeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperinceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", contactTextBox.Text);
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
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire(\r\n  'Failed!',\r\n  'Registration failed..! ',\r\n  'error'\r\n)", true);


                }
            }
            finally
            {
                con.Close();
            }
        }
    }
}