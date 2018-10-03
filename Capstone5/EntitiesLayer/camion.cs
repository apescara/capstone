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
        public int idEmpTransporte { get; set; }
        public int internoExterno { get; set; }
        public int camionRampla { get; set; }
        public int capacidad { get; set; }

        public camion() { }
    }
}
