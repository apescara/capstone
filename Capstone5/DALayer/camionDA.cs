using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;

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
                cmd = new SqlCommand("spRegistrarCamion", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmPatente", objCamion.patente);
                cmd.Parameters.Add("@prmInternoExterno", objCamion.internoExterno);
                cmd.Parameters.Add("@prmCamionRampla", objCamion.camionRampla);
                cmd.Parameters.Add("@prmCapacidad", objCamion.capacidad);
                cmd.Parameters.Add("@prmIdEmpTrasnporte", objCamion.idEmpTransporte);
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

        public List<camion> ListarCamiones()
        {
            List<camion> Lista = new List<camion>();
            SqlConnection con = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spListarCamion", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    camion objCamion = new camion();
                    objCamion.idCamion = Convert.ToInt32(dr["idCamion"]);
                    objCamion.patente = dr["patente"].ToString();
                    objCamion.internoExterno = dr["internoExterno"].ToString();
                    objCamion.camionRampla = dr["camionRampla"].ToString();
                    objCamion.empTransporte = dr["empTransporte"].ToString();
                    objCamion.capacidad = Convert.ToInt32(dr["capacidad"]);

                    Lista.Add(objCamion);
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

        public bool EliminarCamion(int id)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool ok = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spEliminarCamion", con);
                cmd.Parameters.AddWithValue("@prmIdCamion", id);
                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();

                cmd.ExecuteNonQuery();

                ok = true;
            }
            catch (Exception ex)
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
