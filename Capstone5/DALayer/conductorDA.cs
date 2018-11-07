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
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spRegistrarConductor", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmNombre", objCond.nombre);
                cmd.Parameters.Add("@prmApellido", objCond.apellido);
                cmd.Parameters.Add("@prmIdEmpTrasnporte", objCond.idEmpTransporte);
                cmd.Parameters.Add("@prmRUT", objCond.RUT);
                cmd.Parameters.Add("@prmFono", objCond.fono);
                cmd.Parameters.Add("@prmEmail", objCond.email);
                con.Open();
                int filas = cmd.ExecuteNonQuery();
                if (filas > 0) response = true;
            }
            catch (Exception ex)
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

        public List<conductor> ListarConductores()
        {
            List<conductor> Lista = new List<conductor>();
            SqlConnection con = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spListarConductores", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    conductor objCond = new conductor();
                    objCond.idConductor = Convert.ToInt32(dr["idConductor"]);
                    objCond.nombre = dr["nombre"].ToString();
                    objCond.apellido = dr["apellido"].ToString();
                    objCond.idEmpTransporte = Convert.ToInt32(dr["idEmpTransporte"]);
                    objCond.nombreEmpTransporte = dr["nombreEmpTransporte"].ToString();
                    objCond.RUT = dr["RUT"].ToString();
                    objCond.fono = Convert.ToInt32(dr["fono"]);
                    objCond.email = dr["email"].ToString();

                    Lista.Add(objCond);
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return Lista;
        }

        public bool EliminarConductor(int id)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool ok = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spliminarConductor", con);
                cmd.Parameters.AddWithValue("@prmIdConductor", id);

                con.Open();

                cmd.ExecuteNonQuery();

                ok = true;
            }
            catch(Exception ex)
            {
                ok = false;
                throw ex;
            }
            finally
            {
                con.Close();
            }


            return ok;
        }
    }
}
