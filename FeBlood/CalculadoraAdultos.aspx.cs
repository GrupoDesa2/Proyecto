using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
namespace FeBlood
{
    public partial class CalculadoraAdultos : System.Web.UI.Page
    {
        private CapaNegocio.Menu menu = new CapaNegocio.Menu();
        private Usuario usuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            mvListarMenus.ActiveViewIndex = 1;
            float Peso = float.Parse(txtPeso.Text.Trim());
            float Talla = float.Parse(txtTalla.Text.Trim());
            float IMC = Peso / (Talla * Talla);
            if (IMC > 25)
            {
                gvMenus.DataSource = menu.Listarimagen();
                gvMenus.DataBind();
            }
            else
            {
                gvMenus.DataSource = menu.Listarimagen();
                gvMenus.DataBind();
            }
        }      
        protected void btnDesayunos_Click(object sender, EventArgs e)
        {
            mvComidas.ActiveViewIndex = 1;

        }

        protected void btnAlmuerzo_Click(object sender, EventArgs e)
        {
            mvComidas.ActiveViewIndex = 2;
        }

        protected void btnCena_Click(object sender, EventArgs e)
        {
            mvComidas.ActiveViewIndex = 3;
        }

        protected void btnMenus_Click(object sender, EventArgs e)
        {
            mvComidas.ActiveViewIndex = 0;
        }

        protected void btnPreA_Click(object sender, EventArgs e)
        {

        }
    }
}