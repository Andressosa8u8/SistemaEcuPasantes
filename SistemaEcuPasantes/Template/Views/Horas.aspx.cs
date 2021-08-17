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
    public partial class Horas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarUsuario();
            }
        }

        private void cargarUsuario()
        {
            List<Tbl_Horas> listaHoras = new List<Tbl_Horas>();
            listaHoras = Cn_Horas.obtenerHoras();
            if (listaHoras != null)
            {
                grvHoras.DataSource = listaHoras;
                grvHoras.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/FormularioHoras.aspx");
        }
    }
}