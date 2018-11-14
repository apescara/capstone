using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class cliente
    {
        public int idCliente { get; set; }
        public String nombre { get; set; }
        public String razonSocial { get; set; }
        public String RUT { get; set; }
        public String EMAIL { get; set; }
        public int fono { get; set; }
        public int idLugar { get; set; }
        public String nombreLugar { get; set; }
    }
}
