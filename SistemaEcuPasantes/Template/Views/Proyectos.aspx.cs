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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarProyectos();
            }
        }

        private void cargarProyectos()
        {
            List<Tbl_Proyecto> listaPro = new List<Tbl_Proyecto>();
            listaPro = Cn_Proyectos.obtenerProyectos();
            if (listaPro != null)
            {
                grvProyectos.DataSource = listaPro;
                grvProyectos.DataBind();
            }
        }
    }
}