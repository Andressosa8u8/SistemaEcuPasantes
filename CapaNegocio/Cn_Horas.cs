using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Horas
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los usuarios
        public static List<Tbl_Horas> obtenerHoras()
        {
            var lista = dc.Tbl_Horas.Where(hor => hor.valida == 'A');
            return lista.ToList();
        }
    }
}
