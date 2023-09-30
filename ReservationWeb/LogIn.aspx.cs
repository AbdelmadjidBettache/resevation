using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReservationWeb
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUtilisa.Text=="admin" && txtPasswo.Text=="admin")
            {
                Response.Redirect("Session.aspx");
                txtUtilisa.Text = "";
                txtPasswo.Text = "";
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Loginalert();", true);
                txtUtilisa.Text = "";
                txtPasswo.Text = "";
            }
        }

        protected void btnEffacer_Click(object sender, EventArgs e)
        {
            txtUtilisa.Text = "";
            txtPasswo.Text = "";
        }
    }
}