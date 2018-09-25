using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALayer;
using EntitiesLayer;



namespace BLogicLayer
{
    public class UsuarioBL
    {
        #region "SINGLETON"
        private static UsuarioBL usuario = null;
        private UsuarioBL() { }
        public static UsuarioBL getInstance()
        {
            if (usuario == null)
            {
                usuario = new UsuarioBL();
            }
            return usuario;
        }
        #endregion

        public Usuario SystemAccess(String user, String password)
        {
            try
            {
                return UsuarioDA.getInstance().SystemAccess(user, password);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
