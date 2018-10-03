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
    public class camionDA
    {

        #region "SINGLETON"
        private static camionDA camion = null;
        private camionDA() { }
        public static camionDA getInstance()
        {
            if (camion == null)
            {
                camion = new camionDA();
            }
            return camion;
        }
        #endregion

        public bool RegistrarCamion(camion objCamion)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool response = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spRegistrarCamion");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmIdCamion", objCamion.idCamion);
                cmd.Parameters.Add("@prmPatente", objCamion.patente);
                cmd.Parameters.Add("@prmIdEmpTransporte", objCamion.idEmpTransporte);
                cmd.Parameters.Add("@prmInternoExterno", objCamion.internoExterno);
                cmd.Parameters.Add("@prmCamionRampla", objCamion.camionRampla);
                cmd.Parameters.Add("@prmCapacidad", objCamion.capacidad);
                con.Open();
                int filas = cmd.ExecuteNonQuery();
                if (filas > 0) response = true;
            }
            catch(Exception ex)
            {
                response = false;
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return response;
        }
    }
}
