using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Asistencia
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();
        public static void save(Tbl_Asistencia asis)
        {
            try
            {
                asis.estado = 'D';
                asis.fecha_hora = DateTime.Now;
                asis.fecha = DateTime.Now;
                asis.tipo = "Entrada";
                dc.Tbl_Asistencia.InsertOnSubmit(asis);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardados <br/>" + ex.Message);
            }
        }
    }
}
