using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaEcuPasantes.Template.Views_Pasantes
{
    public partial class Acuerdo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string usulogeado = Session["Usuario"].ToString();
                bool existe = Cn_Pasantes.autentificarxUsuario(Convert.ToInt32(usulogeado));
                if (existe)
                {
                    ckbAcuerdo.Checked = true;
                    btnGuardar.Enabled = false;
                    ckbAcuerdo.Enabled = false;
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string usulogeado = Session["Usuario"].ToString();
            if (ckbAcuerdo.Checked == true)
            {
                Tbl_Pasantes acuerdo = new Tbl_Pasantes();
                acuerdo = Cn_Pasantes.obtenerPasantesxUsuario(Convert.ToInt32(usulogeado));
                if (acuerdo != null)
                {
                    Cn_Pasantes.acuerdo(acuerdo);
                    string js1 = "alert('Acuerdo aceptado con exito')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                    btnGuardar.Enabled = false;
                    ckbAcuerdo.Enabled = false;
                }
                else
                {
                    string js1 = "alert('No se pudo aceptar el acuerdo')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                }
            }
            else
            {
                string js1 = "alert('No aceptado el acuerdo')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }
    }
}