using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class despacho
    {
        public int idDespacho { get; set; }
        public int numFolio { get; set; }
        public int idCliente { get; set; }
        public int idProducto { get; set; }
        public string documento { get; set; }
        public int numDocumento { get; set; }
        public int numPallets { get; set; }
        public int numCajas { get; set; }
        public int numKilos { get; set; }
    }
}
