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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        [WebMethod]
        public static List<cliente> ListarClientes()
        {
            List<cliente> Lista = null;
            try
            {
                Lista = clienteBL.getInstance().ListarClientes();
            }
            catch (Exception ex)
            {
                Lista = null;
                throw ex;
            }
            return Lista;
        }

        [WebMethod]
        public static bool EliminarCliente(String id)
        {
            Int32 idCliente = Convert.ToInt32(id);

            bool ok = clienteBL.getInstance().Eliminar(idCliente);

            return ok;
        }

        private cliente GetEntity()
        {
            cliente objCli = new cliente();
            objCli.idCliente = 0;
            objCli.nombre = nombre.Text;
            objCli.razonSocial = razonSocial.Text;
            objCli.RUT = RUT.Text;
            objCli.EMAIL = email.Text;
            objCli.fono = Convert.ToInt32(fono.Text);
            objCli.idLugar = Convert.ToInt32(ET.SelectedValue);

            return objCli;
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            cliente objCli = GetEntity();
            bool response = clienteBL.getInstance().RegistrarCliente(objCli);
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