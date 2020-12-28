using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaNegocio
{
    public class Plato
    {
        //cadena de conexion para acceder a SQLSERVER
        private static string cadena = "Server=localhost;database=DBANEMIA;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        
        public string IdPlato
        { get; set; }
        public string NombrePlato
        { get; set; }
        public string TipoPlato
        { get; set; }

        public DataTable ListarDesayunos()
        {

            SqlCommand comando = new SqlCommand("spListarDesayunos", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        public DataTable ListarAlmuerzos()
        {

            SqlCommand comando = new SqlCommand("spListarAlmuerzos", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        public DataTable ListarCenas()
        {

            SqlCommand comando = new SqlCommand("spListarCenas", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        public DataTable ListarDetalleP()
        {

            SqlCommand comando = new SqlCommand("spListarDetallePlato", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdPlato", IdPlato);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        public DataTable ListarIngredientes()
        {
            SqlCommand comando = new SqlCommand("spListarIngredientes", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdPlato", IdPlato);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
       

    }
}
