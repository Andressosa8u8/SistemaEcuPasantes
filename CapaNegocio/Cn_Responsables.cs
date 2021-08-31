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

        //metodo para retornar todos los responsables
        public static List<Tbl_Responsable> obtenerResposables()
        {
            var lista = dc.Tbl_Responsable.Where(resp => resp.Resp_estado == "A");
            return lista.ToList();
        }
        //metodo para verificar credenciales
        public static bool autentificar(string nombre, string pass)
        {
            var auto = dc.Tbl_Responsable.Any(resp => resp.Resp_estado == "A" && resp.Resp_nomlogin.Equals(nombre) && resp.Resp_pass.Equals(pass));
            return auto;
        }
        //metodo para verificar si existe el nombre
        public static bool autentificarxNom(string nombre)
        {
            var auto = dc.Tbl_Responsable.Any(resp => resp.Resp_estado == "A" && resp.Resp_nomlogin == (nombre));
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
        //metodo para verificar si existe el correo
        public static bool autentificarxCorreo(string nombre)
        {
            var auto = dc.Tbl_Responsable.Any(resp => resp.Resp_estado == "A" && resp.Resp_correo == (nombre));
            return auto;
        }
        //metodo para traer el objeto
        public static Tbl_Responsable autentificarxLogin(string nombre, string pass)
        {
            var nlogin = dc.Tbl_Responsable.Single(resp => resp.Resp_estado == "A" && resp.Resp_nomlogin.Equals(nombre) && resp.Resp_pass.Equals(pass));
            return nlogin;
        }
        //metodo para obtener contraseña 
        public static Tbl_Responsable obtenercon(string nombre)
        {
            var contra = dc.Tbl_Responsable.Single(resp => resp.Resp_estado == "A" && resp.Resp_correo.Equals(nombre));
            return contra;
        }
        public static void save(Tbl_Responsable resp)
        {
            try
            {
                resp.Resp_estado = "A";
                resp.Resp_fecha = DateTime.Now;
                resp.tusu_id = 1;
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
