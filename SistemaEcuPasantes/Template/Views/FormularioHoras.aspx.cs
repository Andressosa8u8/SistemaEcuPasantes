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
    public partial class FormularioHoras : System.Web.UI.Page
    {
        private Tbl_Horas horinfo = new Tbl_Horas();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    horinfo = Cn_Horas.obtenerHorasxId(codigo);
                    btnModificar.Visible = true;

                    if (horinfo != null)
                    {
                        txtCantidad.Text = horinfo.cantidad.ToString();
                        txtConcepto.Text = horinfo.concepto.ToString();
                        ddlLabor.SelectedValue = horinfo.Labor_id.ToString();
                        btnGuardar.Visible = false;
                    }
                }
                cargarLabores();
            }
        }

        private void cargarLabores()
        {
            List<Tbl_Labores> listaLab = new List<Tbl_Labores>();
            listaLab = Cn_Labores.obtenerLabor();
            listaLab.Insert(0, new Tbl_Labores() { concepto = "Seleccione..." });
            ddlLabor.DataSource = listaLab;
            ddlLabor.DataTextField = "concepto";
            ddlLabor.DataValueField = "Labor_id";
            ddlLabor.DataBind();
        }
        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                horinfo = Cn_Horas.obtenerHorasxId(id);
                if (horinfo != null)
                {
                    modifcar(horinfo);
                }
            }
        }

        private void modifcar(Tbl_Horas horinfo)
        {
            try
            {
                horinfo.cantidad = Convert.ToInt32(txtCantidad.Text);
                horinfo.concepto = txtConcepto.Text;
                horinfo.Labor_id = Convert.ToInt32(ddlLabor.SelectedValue);

                Cn_Horas.modify(horinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Horas.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        private void Guardar()
        {
            try
            {
                horinfo = new Tbl_Horas();
                horinfo.cantidad = Convert.ToInt32(txtCantidad.Text);
                horinfo.concepto = txtConcepto.Text;
                horinfo.Labor_id = Convert.ToInt32(ddlLabor.SelectedValue);

                Cn_Horas.save(horinfo);

                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Horas.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/Horas.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //bool existe = Cn_Horas.autentificarxNom(txtConcepto.Text);
            //if (existe)
            //{
            //    Tbl_Horas lab = new Tbl_Horas();
            //    lab = Cn_Horas.obtenerHorasxNombre(txtConcepto.Text);
            //    if (lab != null)
            //    {
            //        string js1 = "alert('Horas existente..')";
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            //    }
            //}
            //else
            //{
            //    guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
            //}
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }
    }
}