using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLogicLayer;
using EntitiesLayer;

namespace Capstone5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private camion GetEntity()
        {
            camion objCamion = new camion();
            objCamion.idCamion = 0;
            objCamion.patente = patente.Text;
            objCamion.idEmpTransporte = Convert.ToInt32(EmpTrasnporte.Text);
            objCamion.internoExterno = Convert.ToSByte(internoExterno.Text);
            objCamion.camionRampla = Convert.ToSByte(camionRampla.Text);
            objCamion.capacidad = Convert.ToInt32(capacidad.Text);

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