using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Pasantes
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los usuarios
        public static List<Tbl_Pasantes> obtenerPasante()
        {
            var lista = dc.Tbl_Pasantes.Where(pas => pas.Activo == 'A');
            return lista.ToList();
        }

        //metodo para verificar si existe el correo
        public static bool autentificarxCorreo(string correo)
        {
            var auto = dc.Tbl_Pasantes.Any(pas => pas.Activo == 'A' && pas.Correo == (correo));
            return auto;
        }
    }
}
