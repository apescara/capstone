using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntitiesLayer;
using BLogicLayer;

namespace Capstone5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!Page.IsPostBack)
            {
                Session["UnderSession"] = null;
            }

        }

        protected void LoginUser_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool auth = Membership.ValidateUser(LoginUser.UserName, LoginUser.Password);

            if(auth)
            {
                Usuario objUsuario = UsuarioBL.getInstance().SystemAccess(LoginUser.UserName, LoginUser.Password);
                if (objUsuario != null)
                {
                    SessionManager = new SessionManager(Session);
                    SessionManager.UserSession = objUsuario.ID.ToString();

                    FormsAuthentication.RedirectFromLoginPage(LoginUser.UserName, false);
                }
                else
                {
                    Response.Write
                }
            }
        }



        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario objUsuario = UsuarioBL.getInstance().SystemAccess(LoginUser.UserName, LoginUser.Password);
            if(objUsuario != null)
            {
                Response.Write("<script>alert('USUARIO CORRECTO')</script>");
                Response.Redirect("PanelGeneral.aspx");
            }
            else
            {
                Response.Write("<script>alert('USUARIO INCORRECTO')</script>");
            }
        }
    }
}