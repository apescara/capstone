using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using EntitiesLayer;
using System.Data;


namespace DALayer
{
    public class UsuarioDA
    {
        #region "SINGLETON"
        private static UsuarioDA daUsuario = null;
        private UsuarioDA() { }
        public static UsuarioDA getInstance()
        {
            if (daUsuario == null)
            {
                daUsuario = new UsuarioDA();
            }
            return daUsuario;
        }
        #endregion

        public Usuario SystemAccess(String user, String password)
        {
            SqlConnection connection = null;
            SqlCommand cmd = null;
            Usuario objUser = null;
            SqlDataReader dr = null;
            try
            {
                connection = Connection.getInstance().DBConnection();
                cmd = new SqlCommand("spSystemAccess", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmUser", user);
                cmd.Parameters.AddWithValue("@prmPassword", password);
                connection.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objUser = new Usuario();
                    objUser.ID = Convert.ToInt32(dr["idUsuario"].ToString());
                    objUser.nombreUsuario = dr["usuario"].ToString();
                    objUser.Password = dr["password"].ToString();
                }
            }
            catch(Exception ex)
            {
                objUser = null;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return objUser;
        }
    }
}
