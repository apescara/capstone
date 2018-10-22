using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLogicLayer;
using EntitiesLayer;
using System.Web.Script.Serialization;

namespace Capstone5
{
    public partial class agrTransporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        [WebMethod] 
        public static List<empTransporte> ListarEmpresas()
        {
            List<empTransporte> Lista = null;
            try
            {
                Lista = empTransporteBL.getInstance().ListarEmpTransporte();
            }
            catch(Exception ex)
            {
                Lista = null;
                throw ex;
            }
            return Lista;
        }

        [WebMethod]
        public static bool ActualizarDatosEmpresa(String objId, String objEmail, String objFono)
        {
            empTransporte objEmpresa = new empTransporte()
            {
                idEmpTransporte = Convert.ToInt32(objId),
                email = objEmail,
                fono = Convert.ToInt32(objFono)
            };

            bool ok = empTransporteBL.getInstance().Actualizar(objEmpresa);
            return ok;
        }

        [WebMethod]
        public static bool EliminarEmpresa(String id)
        {
            Int32 idEmpresa = Convert.ToInt32(id);

            bool ok = empTransporteBL.getInstance().Eliminar(idEmpresa);

            return ok;
        }

        private empTransporte GetEntity()
        {
            empTransporte objEmp = new empTransporte();
            objEmp.idEmpTransporte = 0;
            objEmp.nombre = nombre.Text;
            objEmp.razonSocial = razonSocial.Text;
            objEmp.RUT = RUT.Text;
            objEmp.email = email.Text;
            objEmp.fono = Convert.ToInt32(fono.Text);

            return objEmp;
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            //registro
            empTransporte objEmp = GetEntity();
            //enviar a logic
            bool response = empTransporteBL.getInstance().RegistrarEmpTransporte(objEmp);
            if (response == true)
            {
                Response.Write("<script>alert('REGISTRO CORRECTO')</script>");
            }
            else
            {
                Response.Write("<script>alert('REGISTRO INCORRECTO')</script>");
            }
        }

    }
}