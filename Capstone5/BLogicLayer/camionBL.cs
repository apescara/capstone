using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using DALayer;

namespace BLogicLayer
{
    public class camionBL
    {

        #region "SINGLETON"
        private static camionBL camion = null;
        private camionBL() { }
        public static camionBL getInstance()
        {
            if (camion == null)
            {
                camion = new camionBL();
            }
            return camion;
        }
        #endregion

        public bool RegistrarCamion(camion objCamion)
        {
            try
            {
                return camionDA.getInstance().RegistrarCamion(objCamion);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
