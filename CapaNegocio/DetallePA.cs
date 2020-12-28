using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaNegocio
{
    public class DetallePA
    {
        private static string cadena = "Server=localhost;database=DBPLATOS;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        private string IdDetalle
        { get; set; }
        private string Alimento
        { get; set; }
        private string Plato
        { get; set; }
        public DataTable listar()
        {
                string consulta = "select * from TDetallePA where Plato = '" + Plato + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
                DataTable tabla = new DataTable();
                adapter.Fill(tabla);
                return tabla;
            
            }
        public DataTable ListarDetalleP()
        {

            SqlCommand comando = new SqlCommand("spListarDetallePlato", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdPlato", Plato);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
    }
}
