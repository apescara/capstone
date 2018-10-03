﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using DALayer;

namespace BLogicLayer
{
    public class empTransporteBL
    {

        #region "SINGLETON"
        private static empTransporteBL empTransporte = null;
        private empTransporteBL() { }
        public static empTransporteBL getInstance()
        {
            if (empTransporte == null)
            {
                empTransporte = new empTransporteBL();
            }
            return empTransporte;
        }
        #endregion

        public bool RegistrarEmpTransporte(empTransporte objEmp)
        {
            try
            {
                return empTransporteDA.getInstance().RegistrarEmpTransporte(objEmp);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
