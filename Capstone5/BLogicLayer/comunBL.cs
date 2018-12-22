using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using DALayer;

namespace BLogicLayer
{
    public class comunBL
    {
        #region "SINGLETON"
        private static comunBL comun = null;
        private comunBL() { }
        public static comunBL getInstance()
        {
            if (comun == null)
            {
                comun = new comunBL();
            }
            return comun;
        }
        #endregion


        public int RegistrarComprobante(comun objComp)
        {
            try
            {
                return comunDA.getInstance().RegistrarComprobante(objComp);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<comun> ListarComprobantes()
        {
            try
            {
                return comunDA.getInstance().ListarComprobantes();
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
                return comunDA.getInstance().EliminarComprobante(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
