using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class Usuario
    {
        public int ID { get; set; }
        public String nombreUsuario { get; set; }
        public String Password { get; set; }

        public Usuario()
        {
        }

        public Usuario(int ID, String nombreUsuario, String Password)
        {
            this.ID = ID;
            this.nombreUsuario = nombreUsuario;
            this.Password = Password;
        }
    }
}
