using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Labores
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los usuarios
        public static List<Tbl_Labores> obtenerLabor()
        {
            var lista = dc.Tbl_Labores.Where(lab => lab.activo == 'A');
            return lista.ToList();
        }
    }
}
