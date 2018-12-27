using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class envioMaterial
    {
        public int idEnvioMaterial { get; set; }
        public int numFolio { get; set; }
        public int idProveedor { get; set; }
        public string documento { get; set; }
        public int numDocumento { get; set; }
        public int idTipoMaterial { get; set; }
        public int cantidad { get; set; }
    }
}
