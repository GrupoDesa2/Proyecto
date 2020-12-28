using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaNegocio
{
    public class Alimento
    {
        //cadena de conexion para acceder a SQLSERVER
        private static string cadena = "Server=localhost;database=DBANEMIA;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        // Mapeado objeto relacional
         public string IdAlimento
        { get; set; }   
        public string TipoAlimento
        { get; set; }
        public string NomAlimento
        { get; set; }

        public DataTable Listar()
        {
            string consulta = "select NomAlimento,TipoAlimento from TAlimento";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        
    }
}
