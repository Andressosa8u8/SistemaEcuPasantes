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
    public partial class AsistenciaPasante : System.Web.UI.Page
    {
        private Tbl_Asistencia asisinfo = new Tbl_Asistencia();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtActividades.Visible = false;
            }
        }
        private void Guardar()
        {
            try
            {
                string usulogeado = Session["Usuario"].ToString();
                asisinfo = new Tbl_Asistencia();
                asisinfo.Usu_id = Convert.ToInt32(usulogeado);
                asisinfo.Codigo_Pasante = txtAsistencia.Text;
                Cn_Asistencia.save(asisinfo);
                string js1 = "alert('Ingreso registrado con existo..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                txtAsistencia.Text = "";
            }
            catch (Exception ex)
            {
                string js1 = "alert('Ingreso no registrado.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                txtAsistencia.Text = "";
            }
        }
        private void Modificar(Tbl_Asistencia asismd)
        {
            try
            {
                string usulogeado = Session["Usuario"].ToString();
                asismd.Actividades = txtActividades.Text;
                asismd.Usu_id = Convert.ToInt32(usulogeado);
                Cn_Asistencia.modify(asismd);
                string js1 = "alert('Salida registrada con existo..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                txtAsistencia.Text = "";
                txtActividades.Text = "";
            }
            catch (Exception ex)
            {
                string js1 = "alert('Salida no registrada.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                txtAsistencia.Text = "";
            }
        }

        protected void btnAsistencia_Click(object sender, EventArgs e)
        {
            Guardar();
        }
    }
}