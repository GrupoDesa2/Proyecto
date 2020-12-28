using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaNegocio
{
    public class ValorNutricional
    {
        private static string cadena = "Server=localhost;database=DBANEMIA;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        public string IdNutricion
        { get; set; }
        public string NombreNutricion
        { get; set; }
        public DataTable Listar()
        {
            string consulta = "select * from TValorNutricional";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
    }
}
