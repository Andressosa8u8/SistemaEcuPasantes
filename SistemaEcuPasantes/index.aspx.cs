using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaDatos;

namespace SistemaEcuPasantes
{
    public partial class index : System.Web.UI.Page
    {
        private static int con = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
            Session["con"] = Session["Conantiguo"];
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Ingresar();
        }
        private void Ingresar()
        {
            //MD5 md5 = MD5.Create();
            //byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(TxtPass.Text);
            //byte[] hash = md5.ComputeHash(inputBytes);
            //TxtPass.Text = BitConverter.ToString(hash).Replace("-", "");

            bool existenom = Cn_Usuarios.autentificarxNom(txtUser.Text);
            bool existe = Cn_Usuarios.autentificar(txtUser.Text, txtPass.Text);
            {
                if (existenom)
                {
                    if (existe)
                    {
                        Tbl_Usuario usuario = new Tbl_Usuario();
                        Tbl_Responsable responsable = new Tbl_Responsable();
                        Tbl_Pasantes pasantes = new Tbl_Pasantes();
                        usuario = Cn_Usuarios.autentificarxLogin(txtUser.Text, txtPass.Text);

                        int tusuario = Convert.ToInt32(usuario.tusu_id);
                        if (tusuario == 1)
                        {
                            Session["Admin"] = usuario.Usu_id.ToString();
                            //Session["nombre"] = responsable.Resp_nombre.ToString();
                            //Session["apellido"] = responsable.Resp_apellido.ToString();
                            Response.Redirect("~/Template/Views/Principal.aspx");
                            Limpiar();
                        }
                        else
                        {
                            Session["Usuario"] = usuario.Usu_id.ToString();
                            
                            Response.Redirect("~/Template/Views_Pasantes/Numero_Horas.aspx");
                            Limpiar();
                        }
                    }
                    else
                    {
                        string intentos = (con + (Convert.ToInt32(Session["con"]))).ToString();
                        Session["Conantiguo"] = intentos.ToString();
                        string js1 = "alert('Credenciales Incorrectas!, Intento #"+intentos+"')";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                        txtPass.Text = "";
                        if (Convert.ToInt32(intentos) == 3)
                        {
                            string jsl1 = "alert('A superado el limite de intentos..')";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", jsl1, true);
                            btnIngresar.Visible = false;
                            Session.RemoveAll();
                        }
                    }
                }
                else
                {
                    string js1 = "alert('Usuario No existe..')";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", js1, true);
                }
            }
        }
        private void Limpiar()
        {
            txtPass.Text = "";
            txtUser.Text = "";
        }
    }
}