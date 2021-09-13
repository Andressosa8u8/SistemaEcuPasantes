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

        //metodo para retornar todos los Pasantess
        public static List<Tbl_Pasantes> obtenerPasantes()
        {
            var lista = dc.Tbl_Pasantes.Where(pasa => pasa.Activo == "A" || pasa.Activo == "P");
            return lista.ToList();
        }
        //metodo para verificar credenciales
        //public static bool autentificar(string nombre, string pass)
        //{
        //    var auto = dc.Tbl_Pasantes.Any(pasa => pasa.pasa_estado == "A" && pasa.pasa_nomlogin.Equals(nombre) && pasa.pasa_pass.Equals(pass));
        //    return auto;
        //}
        //metodo para verificar si existe el nombre
        public static bool autentificarxCedula(int cedula)
        {
            var auto = dc.Tbl_Pasantes.Any(pasa => pasa.Activo == "A" && pasa.Cedula == (cedula));
            return auto;
        }
        public static Tbl_Pasantes obtenerPasantesxId(int id)
        {
            var pasaid = dc.Tbl_Pasantes.FirstOrDefault(pasa => pasa.Pasantes_id.Equals(id) && pasa.Activo == "A" || pasa.Activo == "P");
            return pasaid;
        }
        public static Tbl_Pasantes obtenerPasantesxNombre(string nombre)
        {
            var pasanom = dc.Tbl_Pasantes.FirstOrDefault(pasa => pasa.Nombres.Equals(nombre) && pasa.Activo == "A");
            return pasanom;
        }
        public static Tbl_Pasantes obtenerPasantesxCedula(int cedula)
        {
            var pasaced = dc.Tbl_Pasantes.FirstOrDefault(pasa => pasa.Cedula.Equals(cedula) && pasa.Activo == "A");
            return pasaced;
        }
        //metodo para verificar si existe el correo
        public static bool autentificarxCorreo(string nombre)
        {
            var auto = dc.Tbl_Pasantes.Any(pasa => pasa.Activo == "A" && pasa.Correo == (nombre));
            return auto;
        }
        //metodo para traer el objeto
        //public static Tbl_Pasantes autentificarxLogin(string nombre, string pass)
        //{
        //    var nlogin = dc.Tbl_Pasantes.Single(pasa => pasa.pasa_estado == "A" && pasa.pasa_nomlogin.Equals(nombre) && pasa.pasa_pass.Equals(pass));
        //    return nlogin;
        //}
        //metodo para obtener contraseña 
        //public static Tbl_Pasantes obtenercon(string nombre)
        //{
        //    var contra = dc.Tbl_Pasantes.Single(pasa => pasa.pasa_estado == "A" && pasa.pasa_correo.Equals(nombre));
        //    return contra;
        //}
        public static void save(Tbl_Pasantes pasa)
        {
            try
            {
                pasa.Activo = "P";
                pasa.tusu_id = 2;
                pasa.Fecha = DateTime.Now;
                dc.Tbl_Pasantes.InsertOnSubmit(pasa);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void modify(Tbl_Pasantes pasa)
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
        public static void delete(Tbl_Pasantes pasa)
        {
            try
            {
                pasa.Activo = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }
    }
}
