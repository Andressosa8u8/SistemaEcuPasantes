using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Usuarios
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los Usuarios
        public static List<Tbl_Usuario> obtenerResposables()
        {
            var lista = dc.Tbl_Usuario.Where(usu => usu.Estado == "A");
            return lista.ToList();
        }
        ////metodo para verificar credenciales
        public static bool autentificar(string nombre, string pass)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.Estado == "A" && usu.User.Equals(nombre) && usu.Password.Equals(pass));
            return auto;
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.Estado == "A" && usu.User == (nombre));
            return auto;
        }
        public static Tbl_Usuario obtenerUsuarioxId(int id)
        {
            var respid = dc.Tbl_Usuario.FirstOrDefault(usu => usu.Usu_id.Equals(id) && usu.Estado == "A");
            return respid;
        }
        //public static Tbl_Usuario obtenerUsuarioxNombre(string nombre)
        //{
        //    var respnom = dc.Tbl_Usuario.FirstOrDefault(usu => usu.User.Equals(nombre) && resp.Resp_estado == "A");
        //    return respnom;
        //}
        ////metodo para verificar si existe el correo
        //public static bool autentificarxCorreo(string nombre)
        //{
        //    var auto = dc.Tbl_Usuario.Any(resp => resp.Resp_estado == "A" && resp.Resp_correo == (nombre));
        //    return auto;
        //}
        ////metodo para traer el objeto
        public static Tbl_Usuario autentificarxLogin(string nombre, string pass)
        {
            var nlogin = dc.Tbl_Usuario.Single(usu => usu.Estado == "A" && usu.User.Equals(nombre) && usu.Password.Equals(pass));
            return nlogin;
        }
        ////metodo para obtener contraseña 
        //public static Tbl_Usuario obtenercon(string nombre)
        //{
        //    var contra = dc.Tbl_Usuario.Single(resp => resp.Resp_estado == "A" && resp.Resp_correo.Equals(nombre));
        //    return contra;
        //}
        public static void save(Tbl_Usuario usu)
        {
            try
            {
                usu.Estado = "A";
                dc.Tbl_Usuario.InsertOnSubmit(usu);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void modify(Tbl_Usuario resp)
        {
            try
            {
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido modificados <br/>" + ex.Message);
            }
        }
        public static void delete(Tbl_Usuario usu)
        {
            try
            {
                usu.Estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }
    }
}

