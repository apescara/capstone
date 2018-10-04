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

        public List<empTransporte> listarEmpTransporte()
        {
            List<empTransporte> Lista = new List<empTransporte>();
            SqlConnection con = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;

            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spListarEmpTransporte", con);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    //Se cran los objetoss
                    empTransporte objEmpTrans = new empTransporte();
                    objEmpTrans.idEmpTransporte = Convert.ToInt32(dr["idEmpTransporte"].ToString());
                    objEmpTrans.nombre = dr["nombre"].ToString();
                    objEmpTrans.razonSocial = dr["razonSocial"].ToString();
                    objEmpTrans.RUT = dr["RUT"].ToString();
                    objEmpTrans.email = dr["email"].ToString();
                    objEmpTrans.fono = Convert.ToInt32(dr["fono"].ToString());

                    //se suman a la lista
                    Lista.Add(objEmpTrans);
                }
            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                con.Close();
            }
            return Lista;
        }


    }
}
