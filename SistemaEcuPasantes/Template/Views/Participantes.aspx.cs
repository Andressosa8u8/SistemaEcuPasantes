using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace SistemaEcuPasantes.Template.Views
{
    public partial class Participantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarParticipantes();
            }
        }

        private void cargarParticipantes()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var query = from p in dc.Tbl_Pasantes 
                        join l in dc.Tbl_Labores on p.Pasantes_id equals l.Pasantes_id
                        join pr in dc.Tbl_Proyecto on l.Proyecto_id equals pr.Proyecto_id
                        orderby p.Universidad
                        select new 
                        {
                            p.Apellidos,
                            p.Nombres,
                            p.Universidad,
                            pr.Proyecto_concepto,
                            pr.Proyecto_descripcion
                        };
            grvParticipantes.DataSource = query.ToList();
            grvParticipantes.DataBind();
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            BuscarPorU(txtBuscar.Text.ToString());
            
        }
        public void BuscarPorU(string universidad)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            if (universidad == "")
            {
                cargarParticipantes();
            }
            else
            {
                var query = from p in dc.Tbl_Pasantes
                            join l in dc.Tbl_Labores on p.Pasantes_id equals l.Pasantes_id
                            join pr in dc.Tbl_Proyecto on l.Proyecto_id equals pr.Proyecto_id
                            where p.Universidad == universidad
                            orderby p.Universidad
                            select new
                            {
                                p.Apellidos,
                                p.Nombres,
                                p.Universidad,
                                pr.Proyecto_concepto,
                                pr.Proyecto_descripcion
                            };
                if(query != null)
                {
                    grvParticipantes.DataSource = query.ToList();
                    grvParticipantes.DataBind();
                }
                else
                {
                    cargarParticipantes();
                }
            }
        }
    }
}