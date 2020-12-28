using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaNegocio
{
    public class DetalleValorNutricional
    {
        //cadena de conexion para acceder a SQLSERVER
        private static string cadena = "Server=localhost;database=DBANEMIA;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        public string IdDetalleVA
        { get; set; }
        public string Alimento
        { get; set; }
        public string Nutricion
        { get; set; }
        public float Cantidad
        { get; set; }
        public DataTable ListarVN()
        {
            SqlCommand comando = new SqlCommand("spListarVN", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdAlimento", Alimento );
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
    }
}
