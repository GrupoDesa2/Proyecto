using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaNegocio
{
    public class Menu
    {
        //cadena de conexion para acceder a SQLSERVER
        private static string cadena = "Server=localhost;database=DBPLATOS;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        // Mapeado objeto relacional
        public string idmenu
        { get; set; }
        public string nombreplato
        { get; set; }
        public string tipomenu
        { get; set; }
        public string ingredientes
        { get; set; }
        public string proteinas
        { get; set; }
        public float carbohidratos
        { get; set; }
        public string grasas
        { get; set; }
        public float calorias
        { get; set; }
        public DataTable ListarMenu()
        {

            string consulta = "select idmenu from tmenu";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;

        }
        public DataTable ListarMenor()
        {

            string consulta = "select idmenu from tmenu";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        public DataTable Listarimagen()
        {

            string consulta = "select idmenu from tmenu";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        //public DataTable ListarMayor()
        //{

        //    SqlCommand comando = new SqlCommand("spListarMenuMayor", conexion);
        //    comando.CommandType = CommandType.StoredProcedure;
        //    comando.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter adapter = new SqlDataAdapter(comando);
        //    DataTable tabla = new DataTable();
        //    adapter.Fill(tabla);
        //    return tabla;
        //}
        public bool AgregarMenu()
        {
            try
            {
                string consulta = "insert into tmenu values('" + idmenu + "','" + nombreplato + "','" +
                    tipomenu + "','" + ingredientes + "','" + proteinas + "','" +
                    carbohidratos + "','" + grasas + "','" + calorias + "')";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                // Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }
        }
        public bool Eliminar()
        {
            try
            {
                string consulta = "delete from tmenu where idmenu = '" + idmenu + "'";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                // Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }
        }
        public bool Actualizar()
        {
            try
            {
                SqlCommand comando = new SqlCommand("spACtualizarDatos", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adapter = new SqlDataAdapter(comando);
                conexion.Open();
                // Ejecutar la instruccion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }
        }

    }
}
