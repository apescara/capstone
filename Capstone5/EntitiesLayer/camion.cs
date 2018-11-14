using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class camion
    {
        public int idCamion { get; set; }
        public String patente { get; set; }
        public String internoExterno { get; set; }
        public String camionRampla{ get; set; }
        public int capacidad { get; set; }
        public int idEmpTransporte { get; set; }
        public String empTransporte { get; set; }
    }
}
