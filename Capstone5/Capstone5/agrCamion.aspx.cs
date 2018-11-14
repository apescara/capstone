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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<camion> ListarCamiones()
        {
            List<camion> Lista = null;
            try
            {
                Lista = camionBL.getInstance().ListarCamiones();
            }
            catch (Exception ex)
            {
                Lista = null;
                throw ex;
            }
            return Lista;
        }

        [WebMethod]
        public static bool EliminarCamion(String id)
        {
            Int32 idCamion = Convert.ToInt32(id);

            bool ok = camionBL.getInstance().Eliminar(idCamion);

            return ok;
        }

        private camion GetEntity()
        {
            camion objCamion = new camion();
            objCamion.idCamion = 0;
            objCamion.patente = patente.Text;
            objCamion.internoExterno = (Convert.ToInt32(procedencia.SelectedValue) == 1) ? "INTERNO" : "EXTERNO";
            objCamion.camionRampla = (Convert.ToInt32(tipoCamion.SelectedValue) == 1) ? "CAMION" : "RAMPLA";
            objCamion.capacidad = Convert.ToInt32(capacidad.Text);
            objCamion.idEmpTransporte = Convert.ToInt32(ET.SelectedValue);

            return objCamion;
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            camion objCamion = GetEntity();
            bool response = camionBL.getInstance().RegistrarCamion(objCamion);
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