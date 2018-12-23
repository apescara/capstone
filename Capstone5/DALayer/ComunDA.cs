using EntitiesLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DALayer
{
    public class comunDA
    {
        #region "SINGLETON"
        private static comunDA comun = null;
        private comunDA() { }
        public static comunDA getInstance()
        {
            if (comun == null)
            {
                comun = new comunDA();
            }
            return comun;
        }
        #endregion

        public int RegistrarComprobante(comun ObjComp)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            //bool response = false;
            //int filas;
            int numeroFolio = -1; 
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spRegistrarComprobante", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter outPut = new SqlParameter("@prmNumeroFolio", SqlDbType.Int);

                cmd.Parameters.Add(outPut);
                cmd.Parameters.Add("@prmIdrecepcionista", ObjComp.idRecepcionista);
                cmd.Parameters.Add("@prmFechaDocumento", ObjComp.fechaDocumento); 
                cmd.Parameters.Add("@prmFechaComprobante", ObjComp.fechaComprobante);
                cmd.Parameters.Add("@prmIdEmpTransporte", ObjComp.idEmpTransporte);
                cmd.Parameters.Add("@prmIdRampla", ObjComp.idRampla);
                cmd.Parameters.Add("@prmIdConductor", ObjComp.idConductor);
                cmd.Parameters.Add("@prmTemperatura", ObjComp.temperatura);
                cmd.Parameters.Add("@prmRechazo", ObjComp.rechazo);
                con.Open();

                cmd.ExecuteNonQuery();
                //filas = cmd.ExecuteNonQuery();
                //if (filas > 0) response = true;
                if (outPut.Value != DBNull.Value) numeroFolio = Convert.ToInt32(outPut.Value);
            }
            catch (Exception ex)
            {
                numeroFolio = -1;
                //response = false;
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return numeroFolio;
        }

        public List<comun> ListarComprobantes()
        {
            List<comun> Lista = new List<comun>();
            SqlConnection con = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spListarComprobantes", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    comun objComp = new comun();
                    objComp.idRecepcionista = Convert.ToInt32(dr["idRecepcionista"]);
                    objComp.fechaComprobante = Convert.ToDateTime(dr["fechaComprobante"]);
                    objComp.fechaDocumento = Convert.ToDateTime(dr["fechaDocumento"]);
                    objComp.idRampla = Convert.ToInt32(dr["idRampla"]);
                    objComp.idConductor = Convert.ToInt32(dr["idConductor"]);
                    objComp.idEmpTransporte = Convert.ToInt32(dr["idEmpTransporte"]);
                    objComp.temperatura = Convert.ToInt32(dr["temperatura"]);
                    objComp.rechazo = Convert.ToInt32(dr["rechazo"]);

                    Lista.Add(objComp);
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

        public bool EliminarComprobante(int id)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool ok = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spEliminarComprobante", con);
                cmd.Parameters.AddWithValue("@prmIdComprobante", id);
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
