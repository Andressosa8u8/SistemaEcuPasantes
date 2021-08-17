using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaEcuPasantes.Template.Views
{
    public partial class Pasantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarPasante();
            }
        }

        private void cargarPasante()
        {
            List<Tbl_Pasantes> listaPas = new List<Tbl_Pasantes>();
            listaPas = Cn_Pasantes.obtenerPasante();
            if (listaPas != null)
            {
                grvPasantes.DataSource = listaPas;
                grvPasantes.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/FormularioPasantes.aspx");
        }
    }
}