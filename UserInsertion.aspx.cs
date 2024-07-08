using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace RestaurantTableBookingApp
{
    public partial class UserInsertion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmituser_Click(object sender, EventArgs e)
        {

            string username = txtname.Text;
            string user_Ph = txtphone.Text;
            string user_email = txtemail.Text;

            int table_members = Convert.ToInt16(DropDownList1.SelectedValue);

            string dateoftable = "";
            dateoftable = txtdate.Text;

            //DateTime dateoftable = Convert.ToDateTime(txtdate.Text);

            var conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=RestaurantTableBooking;Integrated Security=True");
            try
            {
                conn.Open();
                var sqlcommand = new SqlCommand("RestaurantTableStoredPro", conn);
                sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlcommand.Parameters.AddWithValue("@name", username);
                sqlcommand.Parameters.AddWithValue("@phone", user_Ph);
                sqlcommand.Parameters.AddWithValue("@email", user_email);
                sqlcommand.Parameters.AddWithValue("@tablemembers", table_members);
                sqlcommand.Parameters.AddWithValue("@date", dateoftable);
                sqlcommand.Parameters.AddWithValue("@Type", "Insert");
                sqlcommand.ExecuteNonQuery();
                if (dateoftable != null)
                {
                    lblValidmsg.Text = "Successfully added table in our Restaurant....Welcome!!!";
                }
            }

	        catch (Exception ex)
	        {

                Console.WriteLine(ex.Message);  
	        }

            finally
            {
                conn.Close();
            }

            if (string.IsNullOrEmpty(dateoftable))
            {
                lblValidmsg.Text = "Please Select a Date For Table Booking";
            }

            
        }
    }
}