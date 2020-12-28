using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeBlood
{
    public partial class CalculadoraNiños : System.Web.UI.Page
    {
        private CapaNegocio.Plato plato = new CapaNegocio.Plato();
        private CapaNegocio.DetallePA detallePA = new CapaNegocio.DetallePA();
        private CapaNegocio.DetalleValorNutricional vn = new CapaNegocio.DetalleValorNutricional();
        private void ListarP()
        {
            gvDetalleD.DataSource = detallePA.ListarDetalleP();
            gvDetalleD.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            mvListarMenus.ActiveViewIndex = 1;
            float Peso = float.Parse(txtPeso.Text.Trim());
            float Talla = float.Parse(txtTalla.Text.Trim());
            float IMC = Peso / (Talla * Talla);
            float edad = float.Parse(txtEdad.Text.Trim());
            float hemoglobina = float.Parse(txtHemoglobina.Text.Trim());
            String nombre = txtNombre.Text.Trim();
            if (edad < 15 && edad >= 12)
            {
                if (hemoglobina > 12)
                {
                    lbl1.Text = "Hola " + nombre + ", segun los datos ingresados tu nivel de hemoglobina se encuentra en el rango normal segun tu edad";
                }
                else if (hemoglobina >= 11 && hemoglobina < 12)
                {
                    lbl1.Text = "Hola " + nombre + ",los datos ingresados indican que padeces de una Anemia Leve de acuerdo a tu edad";
                }
                else if (hemoglobina < 8)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Grave de acuerdo a tu edad";
                }
                else if (hemoglobina >= 8 && hemoglobina <= 10.9)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Moderada de acuerdo a tu edad";
                }
            }
            else if (edad >= 5 && edad <= 11)
            {
                if (hemoglobina > 11.5)
                {
                    lbl1.Text = "Hola " + nombre + ", segun a los datos ingresados tu nivel de hemoglobina se encuentra en el rango normal segun tu edad";
                }
                else if (hemoglobina >= 11 && hemoglobina < 12)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Leve de acuerdo a tu edad";
                }
                else if (hemoglobina < 8)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Grave de acuerdo a tu edad";
                }
                else if (hemoglobina >= 8 && hemoglobina <= 10.9)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Moderada de acuerdo a tu edad";
                }

            }
            else
            {   
                if (hemoglobina > 11)
                {
                    lbl1.Text = "Hola " + nombre + ", segun a los datos ingresados tu nivel de hemoglobina se encuentra en el rango normal segun tu edad";
                }
                else if (hemoglobina >= 10 && hemoglobina < 11)
                {
                    lbl1.Text = "Hola " + nombre + ",los datos ingresados indican que padeces de Anemia Leve de acuerdo a tu edad";
                }
                else if (hemoglobina < 7)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Grave de acuerdo a tu edad";
                }
                else if (hemoglobina >= 7 && hemoglobina <= 9.9)
                {
                    lbl1.Text = "Hola " + nombre + ", los datos ingresados indican que padeces de Anemia Moderada de acuerdo a tu edad";
                }
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

        protected void btnPreD_Click(object sender, EventArgs e)
        {
            string codigo = txtPreD.Text.Trim();
            plato.IdPlato = codigo;
            mvdesayunos.ActiveViewIndex = 1;
            gvDetalleD.DataSource = plato.ListarIngredientes();
            gvDetalleD.DataBind();
        }

        protected void btnPreA_Click(object sender, EventArgs e)
        {
            string codigo = txtPreA.Text.Trim();
            plato.IdPlato = codigo;
            mvalmuerzos.ActiveViewIndex = 1;
            gvDetalleA.DataSource = plato.ListarIngredientes();
            gvDetalleA.DataBind();
        }

        protected void btnPreC_Click(object sender, EventArgs e)
        {
            string codigo = txtPreC.Text.Trim();
            plato.IdPlato = codigo;
            mvcenas.ActiveViewIndex = 1;
            gvDetalleC.DataSource = plato.ListarIngredientes();
            gvDetalleC.DataBind();
        }

        protected void btnVerIngD_Click(object sender, EventArgs e)
        {
            string codigo = txtVerIngD.Text.Trim();
            vn.Alimento = codigo;
            mvIngD.ActiveViewIndex = 1;
            gvIngD.DataSource = vn.ListarVN();
            gvIngD.DataBind();
        }

        protected void btnVerIngA_Click(object sender, EventArgs e)
        {
            string codigo = txtVerIngA.Text.Trim();
            vn.Alimento = codigo;
            mvIngA.ActiveViewIndex = 1;
            gvIngA.DataSource = vn.ListarVN();
            gvIngA.DataBind();
        }

        protected void btnVerIngC_Click(object sender, EventArgs e)
        {
            string codigo = txtVerIngC.Text.Trim();
            vn.Alimento = codigo;
            mvIngC.ActiveViewIndex = 1;
            gvIngC.DataSource = vn.ListarVN();
            gvIngC.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}