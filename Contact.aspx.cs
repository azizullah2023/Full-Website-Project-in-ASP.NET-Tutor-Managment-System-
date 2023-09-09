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
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void resetcontrol() {
            nameTextBox.Text = "";
          emailTextBox.Text = "";
            messageTextBox.Text = "";
            SubjectDropDownList.ClearSelection();

        }


        protected void submitbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con=new SqlConnection(cs);
            string sp = "spcontact_insert";
            SqlCommand cmd=new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",nameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", messageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a>0) {
             //  Response.Write("<script>Swal.fire(\r\n  'Completed!',\r\n  'Your Form Has Been Submitted!',\r\n  'success'\r\n)</script>");
                ScriptManager.RegisterStartupScript(this,GetType(),"Popup", "successcontact();", true);
                resetcontrol();
            }
            else {
                 Response.Write("<script>errorcontact();</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "errorcontact();", true);

            }
            con.Close();



        }
    }
}