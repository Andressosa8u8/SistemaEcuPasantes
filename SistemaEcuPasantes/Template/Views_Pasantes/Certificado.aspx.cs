using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEcuPasantes.Template.Views_Pasantes
{
    public partial class Certificado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFecha.Text = DateTime.Now.ToString("QUITO,d 'de' MMMM 'de' yyyy");
            }
        }
    }
}