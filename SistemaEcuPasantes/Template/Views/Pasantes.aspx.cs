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
            listaPas = Cn_Pasantes.obtenerPasantes();
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

        protected void grvPasantes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Template/Views/FormularioPasantes.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Pasantes pasape = new Tbl_Pasantes();
                pasape = Cn_Pasantes.obtenerPasantesxId(codigo);
                if (pasape != null)
                {
                    Cn_Pasantes.delete(pasape);
                    cargarPasante();
                }
            }
            else if(e.CommandName == "Actualizar")
            {
                Tbl_Pasantes pasaes = new Tbl_Pasantes();
                pasaes = Cn_Pasantes.obtenerPasantesxId(codigo);
                if (pasaes != null)
                {
                    Cn_Pasantes.status(pasaes);
                    cargarPasante();
                }
            }
        }
    }
}