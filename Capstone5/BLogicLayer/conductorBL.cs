using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using DALayer;

namespace BLogicLayer
{
    public class conductorBL
    {
        #region "SINGLETON"
        private static conductorBL conductor = null;
        private conductorBL() { }
        public static conductorBL getInstance()
        {
            if (conductor == null)
            {
                conductor = new conductorBL();
            }
            return conductor;
        }
        #endregion

        public bool RegistrarConductor(conductor objCond)
        {
            try
            {
                return conductorDA.getInstance().RegistrarConductor(objCond);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public List<conductor> ListarConductores()
        {
            try
            {
                return conductorDA.getInstance().ListarConductores();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public bool Eliminar(int id)
        {
            try
            {
                return conductorDA.getInstance().EliminarConductor(id);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
