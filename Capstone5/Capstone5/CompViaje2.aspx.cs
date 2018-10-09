using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone5
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RecepcionForm.Visible = false;
            RecepcionMaterialesForm.Visible = false;
            DespachoForm.Visible = false;
        

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (RecepcionCheckBox.Checked)
            {
                RecepcionForm.Visible = true;
            }

            if (DespachoCheckBox.Checked)
            {
                DespachoForm.Visible = true;

            }

            if (MaterialesCheckBox.Checked)
            {
                RecepcionMaterialesForm.Visible = true;

            }
        }








    }
}