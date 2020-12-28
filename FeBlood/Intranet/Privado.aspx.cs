using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
namespace FeBlood.Intranet
{
    public partial class Privado : System.Web.UI.Page
    {
        private CapaNegocio.Menu menu = new CapaNegocio.Menu();
        private void Listar()
        {
            gvEscuela.DataSource = menu.ListarMenu();
            gvEscuela.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Listar();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string idMenu = txtIdMenu.Text.Trim();
            string nombrePlato = txtNombrePlato.Text.Trim();
            string tipoMenu = txtTipoMenu.Text.Trim();
            string ingredientes = txtIngredientes.Text.Trim();
            string proteinas = txtProteinas.Text.Trim();
            string grasaTotal = txtGrasas.Text.Trim();
            string carbohidratos = txtCarbohidratos.Text.Trim();
            string calorias = txtCalorias.Text.Trim();
            CapaNegocio.Menu menu = new CapaNegocio.Menu();
            menu.idmenu = idMenu;
            menu.nombreplato = nombrePlato;
            menu.tipomenu = tipoMenu;
            menu.ingredientes = ingredientes;
            menu.proteinas = proteinas;
            menu.grasas = grasaTotal;
            menu.carbohidratos = float.Parse(carbohidratos);
            menu.calorias = float.Parse(calorias);
            if (menu.AgregarMenu() == true)
                Listar();
            else
                Response.Write("Error: No se ha agregado correctamente ");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            CapaNegocio.Menu menu = new CapaNegocio.Menu();
            menu.idmenu = txtIdMenu.Text.Trim();
            if (menu.Eliminar())
                Listar();
            else Response.Write("Error al eliminar menu");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            CapaNegocio.Menu menu = new CapaNegocio.Menu();
            menu.idmenu = txtIdMenu.Text.Trim();
            menu.nombreplato = txtNombrePlato.Text.Trim();
            menu.tipomenu = txtTipoMenu.Text.Trim();
            menu.ingredientes = txtIngredientes.Text.Trim();
            menu.proteinas = txtProteinas.Text.Trim();
            menu.grasas = txtGrasas.Text.Trim();
            menu.carbohidratos = float.Parse(txtCarbohidratos.Text.Trim());
            menu.calorias = float.Parse(txtCalorias.Text.Trim());
            if (menu.Actualizar())
                Listar();
            else
                Response.Write("Error: No se actualizo correctamente ");
        }
    
    }
}