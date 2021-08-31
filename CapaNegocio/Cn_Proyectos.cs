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
            var lista = dc.Tbl_Proyecto.Where(pro => pro.Activo == "A");
            return lista.ToList();
        }
        public static Tbl_Proyecto obtenerProyectosxId(int id)
        {
            var proid = dc.Tbl_Proyecto.FirstOrDefault(pro => pro.Proyecto_id.Equals(id) && pro.Activo == "A");
            return proid;
        }
        public static Tbl_Proyecto obtenerProyectoxNombre(string nombre)
        {
            var pronom = dc.Tbl_Proyecto.FirstOrDefault(pro => pro.Proyecto_concepto.Equals(nombre) && pro.Activo == "A");
            return pronom;
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Proyecto.Any(pro => pro.Activo == "A" && pro.Proyecto_concepto == (nombre));
            return auto;
        }

        public static void save(Tbl_Proyecto pro)
        {
            try
            {
                pro.Activo = "A";
                dc.Tbl_Proyecto.InsertOnSubmit(pro);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void modify(Tbl_Proyecto pro)
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

        public static void delete(Tbl_Proyecto pro)
        {
            try
            {
                pro.Activo = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }
    }
}
