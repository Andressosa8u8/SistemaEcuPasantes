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
    public partial class FormularioPasantes : System.Web.UI.Page
    {
        Tbl_Pasantes pasinfo = new Tbl_Pasantes();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    pasinfo = Cn_Pasantes.obtenerPasantesxId(codigo);
                    btnModificar.Visible = true;

                    if (pasinfo != null)
                    {
                        txtApellido.Text = pasinfo.Apellidos.ToString();
                        txtNombre.Text = pasinfo.Nombres.ToString();
                        txtCedula.Text = pasinfo.Cedula.ToString();
                        txtCelular.Text = pasinfo.Celular.ToString();
                        txtEmail.Text = pasinfo.Correo.ToString();
                        txtCarrera.Text = pasinfo.Carrera.ToString();
                        txtCurriculum.Text = pasinfo.Curriculum.ToString();
                        txtCertificado.Text = pasinfo.Certificado.ToString();
                        txtArea.Text = pasinfo.Area.ToString();
                        txtNivel.Text = pasinfo.Nsemestre.ToString();
                        txtUniversidad.Text = pasinfo.Universidad.ToString();
                        txtCodigo.Text = pasinfo.CodigoPa.ToString();
                        btnGuardar.Visible = false;
                    }
                }
            }
        }
        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                pasinfo = Cn_Pasantes.obtenerPasantesxId(id);
                if (pasinfo != null)
                {
                    modifcar(pasinfo);
                }
            }
        }
        private void Guardar()
        {
            try
            {
                pasinfo = new Tbl_Pasantes();
                pasinfo.Apellidos = txtApellido.Text;
                pasinfo.Nombres = txtNombre.Text;
                pasinfo.Cedula = Convert.ToInt32(txtCedula.Text);
                pasinfo.Celular = Convert.ToInt32(txtCelular.Text);
                pasinfo.Correo = txtEmail.Text;
                pasinfo.Carrera = txtCarrera.Text;
                pasinfo.Curriculum = txtCurriculum.Text;
                pasinfo.Certificado = txtCertificado.Text;
                pasinfo.Area = txtArea.Text;
                pasinfo.Nsemestre = Convert.ToInt32(txtNivel.Text);
                pasinfo.Universidad = txtUniversidad.Text;
                pasinfo.CodigoPa = txtCodigo.Text;

                Cn_Pasantes.save(pasinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Pasantes.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }
        private void modifcar(Tbl_Pasantes pasmd)
        {
            try
            {
                pasmd.Apellidos = txtApellido.Text;
                pasmd.Nombres = txtNombre.Text;
                pasmd.Cedula = Convert.ToInt32(txtCedula.Text);
                pasmd.Celular = Convert.ToInt32(txtCelular.Text);
                pasmd.Correo = txtEmail.Text;
                pasmd.Carrera = txtCarrera.Text;
                pasmd.Curriculum = txtCurriculum.Text;
                pasmd.Certificado = txtCertificado.Text;
                pasmd.Area = txtArea.Text;
                pasmd.Nsemestre = Convert.ToInt32(txtNivel.Text);
                pasmd.Universidad = txtUniversidad.Text;
                pasmd.CodigoPa = txtCodigo.Text;

                Cn_Pasantes.modify(pasmd);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Pasantes.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/Pasantes.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void txtCedula_TextChanged(object sender, EventArgs e)
        {
            bool existe = Cn_Pasantes.autentificarxCedula(Convert.ToInt32(txtCedula.Text));
            if (existe)
            {
                Tbl_Pasantes resp = new Tbl_Pasantes();
                resp = Cn_Pasantes.obtenerPasantesxCedula(Convert.ToInt32(txtCedula.Text));
                if (resp != null)
                {
                    string js1 = "alert('Usuario existente..')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                    btnGuardar.Enabled = false;
                }
            }
            else
            {
                btnGuardar.Enabled = true;
            }
        }
    }
}