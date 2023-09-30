using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReservationWeb
{
    public partial class Session : System.Web.UI.Page
    {
        string saison = "", continent = "", guide = "" ,dateD="";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rbPrint.Checked)
            {
                saison = "Printemps";
            }else if (rbEte.Checked)
            {
                saison = "Été";
            }
            else if (rbAut.Checked)
            {
                saison = "Automne";
            }
            else 
            {
                saison = "Hiver";
            }


            int cpt = 0;
            continent = DropDownList1.SelectedItem.ToString();
            if (chbBible.Checked)
            {
                cpt++;
                if (cpt == 1)
                    guide += " " + chbBible.Text;
                else
                    guide += " et " + chbBible.Text;

            }
            if (chbFute.Checked)
            {
                cpt++;
                if (cpt == 1)
                    guide += " " + chbFute.Text;
                else
                    guide += " et " + chbFute.Text;

            }
            if (chbReve.Checked)
            {
                cpt++;
                if (cpt == 1)
                    guide += " " + chbReve.Text;
                else
                    guide += " et " + chbReve.Text;

            }

            dateD = date.SelectedDate.ToShortDateString();

            //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Loginalert();", true);

            //swal("Here's the title!", "...and here's the text!");

            //saison_lb.Text = String.Format($"La saison de voyage est: {saison}");
            //continent_lb.Text = "le continent à visiter est " + continent;
            //livre_lb.Text = "le(s) livre(s) choisi(s): " + guide;
            //dateD_lb.Text = "et la  date de votre départ est: " + dateD;



        }

        


        
    }
}