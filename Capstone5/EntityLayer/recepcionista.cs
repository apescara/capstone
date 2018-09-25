using System;
using System.Collections.Generic;
using System.Text;

namespace EntityLayer
{
    class recepcionista
    {
        public int ID { get; set; }
        public String Nombre { get; set; }
        public int NumeroContacto { get; set; }
        public String Email { get; set; }
        public String RUT { get; set; }
        public Usuario idUsuario { get; set; }

        public recepcionista()
        {

        }

        public recepcionista(int ID, String Nombre, int NumeroContacto, String Email, String RUT, Usuario idUsuario)
        {
            this.ID = ID;
            this.Nombre = Nombre;
            this.NumeroContacto = NumeroContacto;
            this.Email = Email;
            this.RUT = RUT;
            this.idUsuario = idUsuario;
        }
    }
}
