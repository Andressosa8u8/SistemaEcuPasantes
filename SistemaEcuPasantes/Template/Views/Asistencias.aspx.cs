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
    public partial class Asistencias : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarAsistencias();
            }
        }

        private void cargarAsistencias()
        {
            var query = dc.Asistencias();
            grvAsistencias.DataSource = query.ToList();
            grvAsistencias.DataBind();
        }
    }
}