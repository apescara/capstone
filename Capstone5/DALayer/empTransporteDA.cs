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
    public class empTransporteDA
    {
        #region "SINGLETON"
        private static empTransporteDA empTransporte = null;
        private empTransporteDA() { }
        public static empTransporteDA getInstance()
        {
            if (empTransporte == null)
            {
                empTransporte = new empTransporteDA();
            }
            return empTransporte;
        }
        #endregion

        public bool RegistrarEmpTransporte(empTransporte objEmp)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool response = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spRegistrarEmpTransporte",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmNombre",objEmp.nombre);
                cmd.Parameters.Add("@prmRazonSocial", objEmp.razonSocial);
                cmd.Parameters.Add("@prmRUT", objEmp.RUT);
                cmd.Parameters.Add("@prmEmail", objEmp.email);
                cmd.Parameters.Add("@prmFono", objEmp.fono);
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
