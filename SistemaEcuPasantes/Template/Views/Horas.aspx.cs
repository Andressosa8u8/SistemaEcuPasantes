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
                cargarUsuario();
            }
        }
        private void cargarUsuario()
        {
            List<Tbl_Usuario> listaUsu = new List<Tbl_Usuario>();
            listaUsu = Cn_Usuario.obtenerUsuarios();
            if (listaUsu != null)
            {
                grvUsuarios.DataSource = listaUsu;
                grvUsuarios.DataBind();
            }
        }
    }
}