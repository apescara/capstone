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
    public partial class agrTransporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //registro
                empTransporte objEmp = GetEntity();
                //enviar a logic
                bool response = empTransporteBL.getInstance().RegistrarEmpTransporte(objEmp);
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