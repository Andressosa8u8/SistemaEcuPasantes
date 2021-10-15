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
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarHoras();
            }
        }

        private void cargarHoras()
        {
            var listaHoras = dc.horas();
            if (listaHoras != null)
            {
                grvHoras.DataSource = listaHoras.ToList();
                grvHoras.DataBind();
            }
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
            else if (e.CommandName == "Actualizar")
            {
                Tbl_Horas hores = new Tbl_Horas();
                hores = Cn_Horas.obtenerHorasxId(codigo);
                if (hores != null)
                {
                    Cn_Horas.status(hores);
                    cargarHoras();
                }
            }
        }
    }
}