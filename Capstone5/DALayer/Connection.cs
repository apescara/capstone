using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace DALayer
{
    public class Connection
    {

        #region "SINGLETON"
        private static Connection connection = null;
        private Connection() { }

        public static Connection getInstance()
        {
            if(connection == null)
            {
                 connection = new Connection();
            } 
        return connection; 
        }
        #endregion

        public SqlConnection DBConnection()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = @"Data Source =200.111.160.91\sosql2014; Initial Catalog=PRUEBA2; User ID=sa; Password=Softland510";
            return connection;
        }
    }
}
