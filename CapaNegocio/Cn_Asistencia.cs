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
                asis.Estado = "A";
                asis.HoraEntrada = Convert.ToDateTime(DateTime.Now.ToString("HH:mm:ss"));
                asis.Fecha = DateTime.Now;
                asis.Tipo = "Solo Ingreso";
                dc.Tbl_Asistencia.InsertOnSubmit(asis);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Su ingreso no ha sido registrado <br/>" + ex.Message);
            }
        }
        public static void modify(Tbl_Asistencia asis)
        {
            try
            {
                asis.HoraSalida = Convert.ToDateTime(DateTime.Now.ToString("HH:mm:ss"));
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Su salida no ha sido registrada <br/>" + ex.Message);
            }
        }
    }
}
