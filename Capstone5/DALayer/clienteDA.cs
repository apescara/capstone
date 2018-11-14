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
    public class clienteDA
    {
        #region "SINGLETON"
        private static clienteDA cliente = null;
        private clienteDA() { }
        public static clienteDA getInstance()
        {
            if (cliente == null)
            {
                cliente = new clienteDA();
            }
            return cliente;
        }
        #endregion

        public bool RegistrarCliente(cliente objCli)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool response = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spRegistrarCliente", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@prmNombre", objCli.nombre);
                cmd.Parameters.Add("@prmRazonSocial", objCli.razonSocial);
                cmd.Parameters.Add("@prmRUT", objCli.RUT);
                cmd.Parameters.Add("@prmEmail", objCli.EMAIL);
                cmd.Parameters.Add("@prmFono", objCli.fono);
                cmd.Parameters.Add("@prmIdLugar", objCli.idLugar);
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

        public List<cliente> ListarClientes()
        {
            List<cliente> Lista = new List<cliente>();
            SqlConnection con = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spListarClientes", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    cliente objCli = new cliente();
                    objCli.idCliente = Convert.ToInt32(dr["idCliente"]);
                    objCli.nombre = dr["nombre"].ToString();
                    objCli.razonSocial = dr["razonSocial"].ToString();
                    objCli.RUT = dr["RUT"].ToString();
                    objCli.fono = Convert.ToInt32(dr["fono"]);
                    objCli.EMAIL = dr["email"].ToString();
                    objCli.idLugar = Convert.ToInt32(dr["idLugar"]);
                    objCli.nombreLugar = dr["nombreLugar"].ToString();


                    Lista.Add(objCli);
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

        public bool EliminarCliente(int id)
        {
            SqlConnection con = null;
            SqlCommand cmd = null;
            bool ok = false;
            try
            {
                con = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spEliminarCliente", con);
                cmd.Parameters.AddWithValue("@prmIdCliente", id);
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
