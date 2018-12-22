using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using BLogicLayer;
using EntitiesLayer;
using System.Web.Script.Serialization;
using System.Web.UI.WebControls;

namespace Capstone5
{
    public partial class compViaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private comun GetEntity()
        {
            comun objComp = new comun();
            objComp.numFolio = 0;
            objComp.idRecepcionista = Convert.ToInt32(recepcionista.SelectedValue);
            objComp.fechaDocumento = DateTime.Now;
            objComp.fechaComprobante = DateTime.Now;
            objComp.idConductor = Convert.ToInt32(conductor.SelectedValue);
            objComp.idRampla = Convert.ToInt32(patente.SelectedValue);
            objComp.idEmpTransporte = Convert.ToInt32(empresaTransporte.SelectedValue);

            return objComp;
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PanelGeneral.aspx");
        }

        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            comun objComp = GetEntity();
            //enviar a logic
            int response = comunBL.getInstance().RegistrarComprobante(objComp);
            if (response != -1)
            {
                Response.Write("<script>alert('REGISTRO CORRECTO')</script>");
            }
            else
            {
                Response.Write("<script>alert('REGISTRO INCORRECTO')</script>");
            }
            Session["numero Folio"] = response;
            Response.Redirect("CompViaje2.aspx");
        }
    }
}