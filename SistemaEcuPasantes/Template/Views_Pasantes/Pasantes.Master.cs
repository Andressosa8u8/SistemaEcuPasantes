using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEcuPasantes.Template.Views_Pasantes
{
    public partial class Pasantes : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    string usulogeado = Session["Usuario"].ToString();
                    //string pasNom = Session["nombre"].ToString();
                    //string pasApe = Session["apellido"].ToString();
                    Lbl_nombre.Text = "Bienvenido " /*+ pasNom + " " + pasApe*/;
                }
                else
                {
                    Response.Redirect("../../index.aspx");
                }
                lblFecha.Text = DateTime.Now.ToString("QUITO,d 'DE' MMMM 'DEL' yyyy");
            }
        }

        protected void lnbCerrarSession_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../../index.aspx");
        }
    }
}