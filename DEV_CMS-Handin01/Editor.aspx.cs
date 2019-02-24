using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Bibliotek / Kommandoer
using System.Data;
using System.Data.SqlClient;

namespace DEV_CMS_Handin01
{
    public partial class Editor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSelection_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = DESKTOP-KKPDCI0; integrated security = true; database = CMS");
            SqlCommand cmd = null;
            string sqlsel = "UPDATE Selection SET JokeID = @JokeID, Item1 = @Item1, Item2 = @Item2, Joke = @Joke WHERE SelectionID = 2";

            try
            {
                conn.Open();

                cmd = new SqlCommand(sqlsel, conn);

                // Tilføjer parametrer til SqlCommand, der stemmer overens med kolonnerne fra DB.
                // Definerer de kolonner fra DB, der skal manipuleres med. 
                cmd.Parameters.Add("@JokeID", SqlDbType.Int);
                cmd.Parameters.Add("@Item1", SqlDbType.Int);
                cmd.Parameters.Add("@Item2", SqlDbType.Int);
                cmd.Parameters.Add("@Joke", SqlDbType.Int);

                // Specificerer værdier for parametrene, som DB skal bruge.
                cmd.Parameters["@JokeID"].Value = Convert.ToInt32(DropDownListMainItem.SelectedValue);
                cmd.Parameters["@Item1"].Value = Convert.ToInt32(DropDownListSecondItem.SelectedValue);
                cmd.Parameters["@Item2"].Value = Convert.ToInt32(DropDownListThirdItem.SelectedValue);
                cmd.Parameters["@Joke"].Value = Convert.ToInt32(DropDownListJokes.SelectedValue);

                // Udfører kommando, der ikke returnerer nogen rækker.
                cmd.ExecuteNonQuery();
                DetailsViewSelections.DataBind();

                LabelMessages.Text = "A new Selection for the Template was made!";
            }
            catch (Exception ex)
            {
                LabelMessages.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}