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
            var lista = dc.Tbl_Horas.Where(hor => hor.valida == "A");
            return lista.ToList();
        }
        public static Tbl_Horas obtenerHorasxId(int id)
        {
            var Horid = dc.Tbl_Horas.FirstOrDefault(Hor => Hor.Horas_id.Equals(id) && Hor.valida == "A");
            return Horid;
        }
        //public static Tbl_Horas obtenerHorasxNombre(string nombre)
        //{
        //    var Hornom = dc.Tbl_Horas.FirstOrDefault(Hor => Hor.concepto.Equals(nombre) && Hor.valida == "A");
        //    return Hornom;
        //}
        ////metodo para verificar si existe el nombre
        //public static bool autentificarxNom(string nombre)
        //{
        //    var auto = dc.Tbl_Horas.Any(Hor => Hor.valida == "A" && Hor.concepto == (nombre));
        //    return auto;
        //}
        public static void save(Tbl_Horas Hor)
        {
            try
            {
                Hor.valida = "A";
                dc.Tbl_Horas.InsertOnSubmit(Hor);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void modify(Tbl_Horas Hor)
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
        public static void delete(Tbl_Horas Hor)
        {
            try
            {
                Hor.valida = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }
    }
}
