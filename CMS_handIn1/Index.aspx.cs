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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //conn string
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = CMS;");
            SqlCommand cmd = null;
            SqlDataReader rdr = null;
            string sqlsel1 = "SELECT mainItem, category, headline, picture, description FROM Selection, Items WHERE Selection.mainItem = Items.itemID ";
            string sqlsel2 = "SELECT secondItem, category, headline, picture, description FROM Selection, Items WHERE Selection.secondItem = Items.itemID ";
            string sqlsel3 = "SELECT thirdItem, category, headline, picture, description FROM Selection, Items WHERE Selection.thirdItem = Items.itemID ";
            string sqlsel4 = "SELECT Selection.jokeID, Jokes.caption, Jokes.fileLink FROM Selection, Jokes WHERE Selection.jokeID = Jokes.jokeID";

            //sqlsel1
            try
            {
                conn.Open();

                cmd = new SqlCommand(sqlsel1, conn);
                rdr = cmd.ExecuteReader();

                RepeaterMainItem.DataSource = rdr;
                RepeaterMainItem.DataBind();

            }
            catch (Exception ex)
            {
                LabelFooter.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            //sqlsel2
            try
            {
                conn.Open();
                cmd = new SqlCommand(sqlsel2, conn);
                rdr = cmd.ExecuteReader();

                RepeaterSecond.DataSource = rdr;
                RepeaterSecond.DataBind();
            }
            catch (Exception ex)
            {
                LabelFooter.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            //sqlsel3
            try
            {
                conn.Open();
                cmd = new SqlCommand(sqlsel3, conn);
                rdr = cmd.ExecuteReader();

                RepeaterThird.DataSource = rdr;
                RepeaterThird.DataBind();
            }
            catch (Exception ex)
            {
                LabelFooter.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            //sqlsel4
            try
            {
                conn.Open();
                cmd = new SqlCommand(sqlsel4, conn);
                rdr = cmd.ExecuteReader();

                RepeaterJoke.DataSource = rdr;
                RepeaterJoke.DataBind();
            }
            catch (Exception ex)
            {
                LabelFooter.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }

        }
    }
}