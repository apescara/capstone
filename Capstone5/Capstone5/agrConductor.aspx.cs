using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLogicLayer;
using EntitiesLayer;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Data;

namespace Capstone5


{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
            }

        }

        [WebMethod]
        public static List<conductor> ListarConductores()
        {
            List<conductor> Lista = null;
            try
            {
                Lista = conductorBL.getInstance().ListarConductores();
            }
            catch (Exception ex)
            {
                Lista = null;
                throw ex;
            }
            return Lista;
        }

        [WebMethod]
        public static bool EliminarConductor(String id)
        {
            Int32 idConductor = Convert.ToInt32(id);

            bool ok = conductorBL.getInstance().Eliminar(idConductor);

            return ok;
        }

        private conductor GetEntity()
        {
            conductor objCond = new conductor();
            objCond.idConductor = 0;
            objCond.nombre = nombre.Text;
            objCond.apellido = apellidos.Text;
            objCond.idEmpTransporte = Convert.ToInt32(ET.SelectedValue);
            objCond.RUT = RUT.Text;
            objCond.email = email.Text;
            objCond.fono = Convert.ToInt32(fono.Text);

            return objCond;
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            conductor objCond = GetEntity();
            bool response = conductorBL.getInstance().RegistrarConductor(objCond);
            if(response == true)
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