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
                cargarHoras();
            }
        }

        private void cargarHoras()
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

        protected void grvHoras_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Template/Views/FormularioHoras.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Horas horpe = new Tbl_Horas();
                horpe = Cn_Horas.obtenerHorasxId(codigo);
                if (horpe != null)
                {
                    Cn_Horas.delete(horpe);
                    cargarHoras();
                }
            }
        }
    }
}