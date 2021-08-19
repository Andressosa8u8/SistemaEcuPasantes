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

        

        protected void grvResponsables_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Template/Views/FormularioResponsables.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Responsable proe = new Tbl_Responsable();
                proe = Cn_Responsables.obtenerResponsablexId(codigo);
                if (proe != null)
                {
                    Cn_Responsables.delete(proe);
                    cargarResponsable();
                }
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/FormularioResponsables.aspx");
        }
    }
}