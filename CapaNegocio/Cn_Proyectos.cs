using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Proyectos
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los responsables
        public static List<Tbl_Proyecto> obtenerProyectos()
        {
            var lista = dc.Tbl_Proyecto.Where(pro => pro.Activo == 'A');
            return lista.ToList();
        }
    }
}
