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
    public partial class Responsables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarResponsable();
            }
        }
        private void cargarResponsable()
        {
            List<Tbl_Responsable> listaResp = new List<Tbl_Responsable>();
            listaResp = Cn_Responsables.obtenerResposables();
            if (listaResp != null)
            {
                grvResponsables.DataSource = listaResp;
                grvResponsables.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/FormularioResponsables.aspx");
        }
    }
}