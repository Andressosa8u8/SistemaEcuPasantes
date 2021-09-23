using CapaDatos;
using System;
using System.Linq;

namespace SistemaEcuPasantes.Template.Views
{
    public partial class Numero_Horas : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarNumeroHoras();
            }
        }

        private void cargarNumeroHoras()
        {
            var query = dc.NumeroDeHoras();
            grvNumHoras.DataSource = query.ToList();
            grvNumHoras.DataBind();
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            if (txtBuscar.Text == "")
            {
                cargarNumeroHoras();
            }
            else
            {
                var query = dc.BuscarPorNumeroDeHoras(txtBuscar.Text);
                if (query != null)
                {
                    grvNumHoras.DataSource = query.ToList();
                    grvNumHoras.DataBind();
                }
                else
                {
                    cargarNumeroHoras();
                }
            }
        }
    }
}