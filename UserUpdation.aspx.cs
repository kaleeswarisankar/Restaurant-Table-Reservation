using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantTableBookingApp
{
    public partial class UserUpdation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            int Bookingid = Convert.ToInt32(txtbookingid.Text);
            string username = txtname.Text;
            string user_Ph = txtphone.Text;
            string user_email = txtemail.Text;

            int table_members = Convert.ToInt16(DDList.SelectedValue);
            string dateoftable = txtdate.Text;

            //int table_members = Convert.ToInt16(DDList.SelectedValue);
            //DateTime dateoftable = Convert.ToDateTime(txtdate.Text);

            var conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=RestaurantTableBooking;Integrated Security=True");
            try
            {
                conn.Open();
                var sqlCommand = new SqlCommand("RestaurantTableStoredPro", conn);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@id", Bookingid);
                sqlCommand.Parameters.AddWithValue("@name", username);
                sqlCommand.Parameters.AddWithValue("@email", user_email);
                sqlCommand.Parameters.AddWithValue("@phone", user_Ph);
                sqlCommand.Parameters.AddWithValue("@tablemembers", table_members);
                sqlCommand.Parameters.AddWithValue("@Date", dateoftable);
                sqlCommand.Parameters.AddWithValue("@Type", "Update");
                sqlCommand.ExecuteNonQuery();
            }
            
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }
            lblValidmsg.Text = "Successfully updated a Booked Table";
        }
    }
}