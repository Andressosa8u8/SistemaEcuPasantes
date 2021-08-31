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
    public partial class FormularioLabores : System.Web.UI.Page
    {
        private Tbl_Labores labinfo = new Tbl_Labores();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    int codigo = Convert.ToInt32(Request["cod"]);
                    labinfo = Cn_Labores.obtenerLaboresxId(codigo);
                    btnModificar.Visible = true;

                    if (labinfo != null)
                    {
                        txtDescripcion.Text = labinfo.concepto.ToString();
                        ddlPasantes.SelectedValue = labinfo.Pasantes_id.ToString();
                        ddlProyecto.SelectedValue = labinfo.Proyecto_id.ToString();
                        btnGuardar.Visible = false;
                    }
                }
                cargarPasantes();
                cargarProyectos();
            }
        }

        private void cargarProyectos()
        {
            List<Tbl_Proyecto> listaPro = new List<Tbl_Proyecto>();
            listaPro = Cn_Proyectos.obtenerProyectos();
            listaPro.Insert(0, new Tbl_Proyecto() { Proyecto_concepto = "Seleccione..." });
            ddlProyecto.DataSource = listaPro;
            ddlProyecto.DataTextField = "Proyecto_concepto";
            ddlProyecto.DataValueField = "Proyecto_id";
            ddlProyecto.DataBind();
        }

        private void cargarPasantes()
        {
            List<Tbl_Pasantes> listaPro = new List<Tbl_Pasantes>();
            listaPro = Cn_Pasantes.obtenerPasantes();
            listaPro.Insert(0, new Tbl_Pasantes() { Apellidos = "Seleccione..." });
            ddlPasantes.DataSource = listaPro;
            ddlPasantes.DataTextField = "Apellidos";
            ddlPasantes.DataValueField = "Pasantes_id";
            ddlPasantes.DataBind();
        }

        private void guardar_modificar_datos(int id)
        {
            if (id == 0)
            {
                Guardar();
            }
            else
            {
                labinfo = Cn_Labores.obtenerLaboresxId(id);
                if (labinfo != null)
                {
                    modifcar(labinfo);
                }
            }
        }

        private void modifcar(Tbl_Labores labinfo)
        {
            try
            {
                labinfo.concepto = txtDescripcion.Text;
                labinfo.Pasantes_id = Convert.ToInt32(ddlPasantes.SelectedValue);
                labinfo.Proyecto_id = Convert.ToInt32(ddlProyecto.SelectedValue);

                Cn_Labores.modify(labinfo);
                string js1 = "alert('Datos Modificados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Labores.aspx");
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
                labinfo = new Tbl_Labores();
                labinfo.concepto = txtDescripcion.Text;
                labinfo.Pasantes_id = Convert.ToInt32(ddlPasantes.SelectedValue);
                labinfo.Proyecto_id = Convert.ToInt32(ddlProyecto.SelectedValue);

                Cn_Labores.save(labinfo);
                string js1 = "alert('Datos Guardados Con Exito..')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                Response.Redirect("~/Template/Views/Labores.aspx");
            }
            catch (Exception ex)
            {
                string js1 = "alert('Datos No Guardados.." + ex.Message + "')";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Template/Views/Labores.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            guardar_modificar_datos(Convert.ToInt32(Request["cod"]));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            bool existe = Cn_Labores.autentificarxNom(txtDescripcion.Text);
            if (existe)
            {
                Tbl_Responsable lab = new Tbl_Responsable();
                lab = Cn_Responsables.obtenerResponsablexNombre(txtDescripcion.Text);
                if (lab != null)
                {
                    string js1 = "alert('Labor existente..')";
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