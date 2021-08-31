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
    public partial class FormularioProyectos : System.Web.UI.Page
    {
        private Tbl_Proyecto proinfo = new Tbl_Proyecto();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    proinfo = Cn_Proyectos.obtenerProyectosxId(codigo);
                    btnModificar.Visible = true;

                    if (proinfo != null)
                    {
                        txtConcepto.Text = proinfo.Proyecto_concepto.ToString();
                        txtDescripcion.Text = proinfo.Proyecto_descripcion.ToString();
                        ddlResponsable.SelectedValue = proinfo.Resp_id.ToString();
                        btnGuardar.Visible = false;
                    }
                }
                cargarResponsables();
            }
        }

        private void cargarResponsables()
        {
            List<Tbl_Responsable> listaresp = new List<Tbl_Responsable>();
            listaresp = Cn_Responsables.obtenerResposables();
            listaresp.Insert(0, new Tbl_Responsable() { Resp_apellido = "Seleccione..." });
            ddlResponsable.DataSource = listaresp;
            ddlResponsable.DataTextField = "Resp_apellido";
            ddlResponsable.DataValueField = "Resp_id";
            ddlResponsable.DataBind();
        }
        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                proinfo = Cn_Proyectos.obtenerProyectosxId(id);
                if (proinfo != null)
                {
                    modifcar(proinfo);
                }
            }
        }
        private void modifcar(Tbl_Proyecto proinfo)
        {
            try
            {
                proinfo.Proyecto_concepto = txtConcepto.Text;
                proinfo.Proyecto_descripcion = txtDescripcion.Text;
                proinfo.Resp_id = Convert.ToInt32(ddlResponsable.SelectedValue);

                Cn_Proyectos.modify(proinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Proyectos.aspx");
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
                proinfo = new Tbl_Proyecto();
                proinfo.Proyecto_concepto = txtConcepto.Text;
                proinfo.Proyecto_descripcion = txtDescripcion.Text;
                proinfo.Resp_id = Convert.ToInt32(ddlResponsable.SelectedValue);

                Cn_Proyectos.save(proinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Proyectos.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/Proyectos.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Proyectos.autentificarxNom(txtConcepto.Text);
            if (existe)
            {
                Tbl_Proyecto pro = new Tbl_Proyecto();
                pro = Cn_Proyectos.obtenerProyectoxNombre(txtConcepto.Text);
                if (pro != null)
                {
                    string js1 = "alert('Proyecto existente..')";
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