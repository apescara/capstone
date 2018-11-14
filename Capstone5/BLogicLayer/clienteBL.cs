using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using DALayer;

namespace BLogicLayer
{
    public class clienteBL
    {
        #region "SINGLETON"
        private static clienteBL cliente = null;
        private clienteBL() { }
        public static clienteBL getInstance()
        {
            if (cliente == null)
            {
                cliente = new clienteBL();
            }
            return cliente;
        }
        #endregion

        public bool RegistrarCliente(cliente objCli)
        {
            try
            {
                return clienteDA.getInstance().RegistrarCliente(objCli);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<cliente> ListarClientes()
        {
            try
            {
                return clienteDA.getInstance().ListarClientes();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool Eliminar(int id)
        {
            try
            {
                return clienteDA.getInstance().EliminarCliente(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
