using System;
using System.Linq;
using System.Web.UI.WebControls;
using CapaDatos;

namespace SistemaEcuPasantes.Template.Views_Pasantes
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
            string usulogeado = Session["Usuario"].ToString();
            var query = dc.NumeroDeHorasPasantes(Convert.ToInt32(usulogeado));
            grvNumHoras.DataSource = query.ToList();
            grvNumHoras.DataBind();
        }
    }
}