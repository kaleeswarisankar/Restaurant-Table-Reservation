using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantTableBookingApp
{
    public partial class DatewiseRetrieval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSearch_Click(object sender, EventArgs e)
        {

            string dateoftable = txtdate.Text;

            if (string.IsNullOrEmpty(dateoftable))
            {
                lblValidmsg.Text = "Please Select a Date For Retrieval";
            }
            else if(dateoftable!=null)
            {
                var conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=RestaurantTableBooking;Integrated Security=True");
                try
                {
                    conn.Open();
                    var sqlcommand = new SqlCommand("RestaurantTableStoredPro", conn);
                    sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlcommand.Parameters.AddWithValue("@date", dateoftable);
                    sqlcommand.Parameters.AddWithValue("@Type", "Select");
                    var data = sqlcommand.ExecuteReader();
                    DataTable Dt = new DataTable();
                    Dt.Load(data);
                    GridView1.DataSource = Dt;
                    GridView1.DataBind();
                }

                catch (Exception ex)
                {

                    Console.WriteLine(ex.Message);
                }

                finally
                {
                    conn.Close();
                }
            }

        }
    }
}