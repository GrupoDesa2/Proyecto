using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using CapaNegocio;

namespace FeBlood
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lInicio_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Usuario usuario = new Usuario();
            // Leer los datos del Login
            string codUsuario = lInicio.UserName;
            string contrasena = lInicio.Password;
            usuario.CodUsuario = codUsuario;
            usuario.Contrasena = contrasena;
            if (usuario.Login() == true)
                // Damos acceso al sitio privado
                FormsAuthentication.RedirectFromLoginPage(codUsuario, false);
            else
                lInicio.FailureText = "Usuario y/o conttraseñas incorrectas";
        }
    }
}