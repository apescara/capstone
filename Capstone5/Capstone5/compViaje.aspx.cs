using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone5
{
    public partial class compViaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PanelGeneral.aspx");
        }

        protected void BtnSiguiente_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompViaje2.aspx");
        }
    }
}