using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEcuPasantes.Template.Views
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["Admin"] != null)
                {
                    string usulogeado = Session["Admin"].ToString();
                    Lbl_nombre.Text = "Bienvenido " + usulogeado;
                    Lblnombre.Text = usulogeado;
                }
                else
                {
                    Response.Redirect("../../index.aspx");
                }
                lblFecha.Text = DateTime.Now.ToLongDateString();
            }
        }

        protected void lnbCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../../index.aspx");
        }
    }
}