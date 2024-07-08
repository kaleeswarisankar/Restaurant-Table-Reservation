using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantTableBookingApp
{
    public partial class UserDeletion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deletebtnid_Click(object sender, EventArgs e)
        {
            int Bookingid = Convert.ToInt16(txtid.Text);

            //if (string.IsNullOrEmpty(Bookingid))


            //if (Bookingid!=0)
            //{
            //    lblValidmsg.Text = "Please Enter a Booking id For Retrieval";
            //}
            //else
            //{
                var conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=RestaurantTableBooking;Integrated Security=True");
                try
                {
                    conn.Open();
                    var sqlcommand = new SqlCommand("RestaurantTableStoredPro", conn);
                    sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlcommand.Parameters.AddWithValue("@id", Bookingid);
                    sqlcommand.Parameters.AddWithValue("@Type", "Delete");
                    sqlcommand.ExecuteNonQuery();

                    lblValidmsg.Text = "Deleted Successfully...";
                }
                catch (Exception ex)
                {
                    throw;
                }
                finally
                {
                    conn.Close();
                }
            //}
        }
    }
}