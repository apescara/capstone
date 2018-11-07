using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class conductor
    {
        public int idConductor { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public int idEmpTransporte { get; set; }
        public string RUT { get; set; }
        public string email { get; set; }
        public int fono { get; set; }

        public conductor() { }
    }
}
