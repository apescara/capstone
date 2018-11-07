using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using System.Data;
using System.Data.SqlClient;

namespace DALayer
{
    public class conductorDA
    {
        #region "SINGLETON"
        private static conductorDA conductor = null;
        private conductorDA() { }
        public static conductorDA getInstance()
        {
            if (conductor == null)
            {
                conductor = new conductorDA();
            }
            return conductor;
        }
        #endregion

        public bool RegistrarConductor(conductor objCond)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool response = false;
            try
            {

            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
            return response;
        }
    }
}
