using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class Cn_Responsables
    {
        //Instanciamos el dbml
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

        //metodo para retornar todos los Responsables
        public static List<Tbl_Responsable> obtenerResponsables()
        {
            var lista = dc.Tbl_Responsable.Where(resp => resp.Resp_estado == "A");
            return lista.ToList();
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxCedula(string cedula)
        {
            var auto = dc.Tbl_Responsable.Any(resp => resp.Resp_estado == "A" && resp.Resp_cedula == (cedula));
            return auto;
        }
        public static Tbl_Responsable obtenerResponsablexId(int id)
        {
            var respid = dc.Tbl_Responsable.FirstOrDefault(resp => resp.Resp_id.Equals(id) && resp.Resp_estado == "A");
            return respid;
        }
        public static Tbl_Responsable obtenerResponsablexNombre(string nombre)
        {
            var respnom = dc.Tbl_Responsable.FirstOrDefault(resp => resp.Resp_nombre.Equals(nombre) && resp.Resp_estado == "A");
            return respnom;
        }
        public static Tbl_Responsable obtenerResponsablexCedula(string cedula)
        {
            var respced = dc.Tbl_Responsable.FirstOrDefault(resp => resp.Resp_cedula.Equals(cedula) && resp.Resp_estado == "A");
            return respced;
        }
        //metodo para verificar si existe el correo
        public static bool autentificarxCorreo(string nombre)
        {
            var auto = dc.Tbl_Responsable.Any(resp => resp.Resp_estado == "A" && resp.Resp_correo == (nombre));
            return auto;
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Responsable.Any(resp => resp.Resp_estado == "A" && resp.Resp_nombre == (nombre));
            return auto;
        }
        public static void save(Tbl_Responsable resp)
        {
            try
            {
                resp.Resp_estado = "A";
                resp.Resp_fecha = DateTime.Now;
                dc.Tbl_Responsable.InsertOnSubmit(resp);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void modify(Tbl_Responsable resp)
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
        public static void delete(Tbl_Responsable resp)
        {
            try
            {
                resp.Resp_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }
    }
}
