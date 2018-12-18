using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class comun
    {
        public int numFolio { get; set; }
        public int idRecepcionista { get; set; }
        public DateTime fechaDocumento { get; set; }
        public DateTime fechaComprobante { get; set; }
        public int idEmpTransporte { get; set; }
        public int idRampla { get; set; }
        public int idConductor { get; set; }
        public int temperatura { get; set; }
        public int rechazo { get; set; }
    }
}
