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
    public partial class FormularioResponsables : System.Web.UI.Page
    {
        private Tbl_Responsable respinfo = new Tbl_Responsable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    respinfo = Cn_Responsables.obtenerResponsablexId(codigo);
                    btnModificar.Visible = true;
                    
                    if (respinfo != null)
                    {
                        txtNombre.Text = respinfo.Resp_nombre.ToString();
                        txtApellido.Text = respinfo.Resp_apellido.ToString();
                        txtCedula.Text = respinfo.Resp_cedula.ToString();
                        txtArea.Text = respinfo.Resp_area.ToString();
                        txtCargo.Text = respinfo.Resp_cargo.ToString();
                        txtCelular.Text = respinfo.Resp_celular.ToString();
                        txtEmail.Text = respinfo.Resp_correo.ToString();
                        txtUser.Text = respinfo.Resp_nomlogin.ToString();
                        txtPass.Text = respinfo.Resp_pass.ToString();
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
                respinfo = Cn_Responsables.obtenerResponsablexId(id);
                if (respinfo != null)
                {
                    modifcar(respinfo);
                }
            }
        }
        private void Guardar() 
        {
            try
            {
                respinfo = new Tbl_Responsable();
                respinfo.Resp_nombre = txtNombre.Text;
                respinfo.Resp_apellido = txtApellido.Text;
                respinfo.Resp_cedula = txtCedula.Text;
                respinfo.Resp_area = txtArea.Text;
                respinfo.Resp_cargo = txtCargo.Text;
                respinfo.Resp_celular = txtCelular.Text;
                respinfo.Resp_correo = txtEmail.Text;
                respinfo.Resp_nomlogin = txtUser.Text;
                respinfo.Resp_pass = txtPass.Text;

                Cn_Responsables.save(respinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Responsables.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }
        private void modifcar(Tbl_Responsable respmd)
        {
            try
            {
                respmd.Resp_nombre = txtNombre.Text;
                respmd.Resp_apellido = txtApellido.Text;
                respmd.Resp_cedula = txtCedula.Text;
                respmd.Resp_area = txtArea.Text;
                respmd.Resp_cargo = txtCargo.Text;
                respmd.Resp_celular = txtCelular.Text;
                respmd.Resp_correo = txtEmail.Text;
                respmd.Resp_nomlogin = txtUser.Text;
                respmd.Resp_pass = txtPass.Text;

                Cn_Responsables.modify(respmd);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Responsables.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Modificados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/Responsables.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Responsables.autentificarxNom(txtNombre.Text);
            if (existe)
            {
                Tbl_Responsable resp = new Tbl_Responsable();
                resp = Cn_Responsables.obtenerResponsablexNombre(txtNombre.Text);
                if (resp != null)
                {
                    string js1 = "alert('Usuario existente..')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                }
            }
            else
            {
                guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
            }
        }
    }
}