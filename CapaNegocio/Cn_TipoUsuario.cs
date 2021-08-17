using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_TipoUsuario
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //Metodos que nos sirven para traer toda la informacion
        public static List<Tbl_TipoUsuario> obtenerTusuarios()
        {
            var lista = dc.Tbl_TipoUsuario.Where(tusu => tusu.tusu_estado == 'A');
            return lista.ToList();
        }
    }
}
