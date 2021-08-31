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
    public partial class Labores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarLabor();
            }
        }

        private void cargarLabor()
        {
            List<Tbl_Labores> listaLab = new List<Tbl_Labores>();
            listaLab = Cn_Labores.obtenerLabor();
            if (listaLab != null)
            {
                grvLabores.DataSource = listaLab;
                grvLabores.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/FormularioLabores.aspx");
        }

        protected void grvLabores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Template/Views/FormularioLabores.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Labores labpe = new Tbl_Labores();
                labpe = Cn_Labores.obtenerLaboresxId(codigo);
                if (labpe != null)
                {
                    Cn_Labores.delete(labpe);
                    cargarLabor();
                }
            }
        }
    }
}