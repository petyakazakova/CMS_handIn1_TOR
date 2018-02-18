using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CMS_handIn1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = CMS;");

            try
            {
                if (conn != null)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from MasterTable where ID=1", conn);
                SqlDataReader rdr = cmd.ExecuteReader();

                rdr.Read();

                ImageLogo.ImageUrl = "~/Pictures/logo1.png" + rdr["logo"].ToString();
                LabelCompName.Text = rdr["headline"].ToString();
                LabelAuthor.Text = " Author: " + rdr["author"].ToString();

                rdr.Close();
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;

            }
            finally
            {
                conn.Close();
            }
        }
    }
}