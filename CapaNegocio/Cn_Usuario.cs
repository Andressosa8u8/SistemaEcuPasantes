using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Usuario
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los usuarios
        public static List<Tbl_Usuario> obtenerUsuarios()
        {
            var lista = dc.Tbl_Usuario.Where(usu => usu.usu_estado == 'A');
            return lista.ToList();
        }
        //metodo para verificar credenciales
        public static bool autentificar(string nombre, string pass)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == 'A' && usu.usu_nomlogin.Equals(nombre) && usu.usu_pass.Equals(pass));
            return auto;
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == 'A' && usu.usu_nomlogin == (nombre));
            return auto;
        }
        //metodo para verificar si existe el correo
        public static bool autentificarxCorreo(string nombre)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == 'A' && usu.usu_correo == (nombre));
            return auto;
        }
        //metodo para traer el objeto
        public static Tbl_Usuario autentificarxLogin(string nombre, string pass)
        {
            var nlogin = dc.Tbl_Usuario.Single(usu => usu.usu_estado == 'A' && usu.usu_nomlogin.Equals(nombre) && usu.usu_pass.Equals(pass));
            return nlogin;
        }
        //metodo para obtener contraseña 
        public static Tbl_Usuario obtenercon(string nombre)
        {
            var contra = dc.Tbl_Usuario.Single(usu => usu.usu_estado == 'A' && usu.usu_correo.Equals(nombre));
            return contra;
        }
    }
}
