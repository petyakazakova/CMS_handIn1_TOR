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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonChoose_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = CMS;");
            SqlCommand cmd = null;
            string sqlupd = "UPDATE[Selection] SET[mainItem] = @mainItem, [secondItem] = @secondItem, [thirdItem] = @thirdItem, [jokeID] = @jokeID WHERE[selectionID] = 2";

            try
            {
                conn.Open();

                cmd = new SqlCommand(sqlupd, conn);
                cmd.Parameters.Add("@mainItem", SqlDbType.Int);
                cmd.Parameters.Add("@secondItem", SqlDbType.Int);
                cmd.Parameters.Add("@thirdItem", SqlDbType.Int);
                cmd.Parameters.Add("@jokeID", SqlDbType.Int);

                cmd.Parameters["@mainItem"].Value = Convert.ToInt32(DropDownListMainItem.SelectedValue);
                cmd.Parameters["@secondItem"].Value = Convert.ToInt32(DropDownListSecondItem.SelectedValue);
                cmd.Parameters["@thirdItem"].Value = Convert.ToInt32(DropDownListThirdItem.SelectedValue);
                cmd.Parameters["@jokeID"].Value = Convert.ToInt32(DropDownListJoke.SelectedValue);

                cmd.ExecuteNonQuery();
                
                //update view
                DetailsViewSelections.DataBind();

                LabelMessage.Text = "Selection has been successfully updated.";
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