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
    }
}