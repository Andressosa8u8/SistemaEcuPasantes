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
    public partial class Proyectos : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarProyectos();
            }
        }

        private void cargarProyectos()
        {
            var listaPro = dc.proyectos();
            if (listaPro != null)
            {
                grvProyectos.DataSource = listaPro.ToList();
                grvProyectos.DataBind();
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/FormularioProyectos.aspx");
        }

        protected void grvProyectos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Editar")
            {
                Response.Redirect("~/Template/Views/FormularioProyectos.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tbl_Proyecto prope = new Tbl_Proyecto();
                prope = Cn_Proyectos.obtenerProyectosxId(codigo);
                if (prope != null)
                {
                    Cn_Proyectos.delete(prope);
                    cargarProyectos();
                }
            }
        }
    }
}