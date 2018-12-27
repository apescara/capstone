using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class recepcion
    {
        public int idRecepcion { get; set; }
        public int numFolio { get; set; }
        public int idProductor { get; set; }
        public int idCliente { get; set; }
        public string documento { get; set; }
        public int numDocumento { get; set; }
        public int numPallets { get; set; }
        public int numCajas { get; set; }
        public int numKilos { get; set; }
        public bool paradaPlanta { get; set; }
    }
}
