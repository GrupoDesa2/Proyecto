using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace CapaNegocio
{
    public class Usuario
    {
        //cadena de conexion para acceder a SQLSERVER
        private static string cadena = "Server=localhost;database=DBAlimentacion;integrated Security= true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        public string CodUsuario
        { get; set; }
        public string Contrasena
        { get; set; }
        public string Nombre
        { get; set; }
        public string Apellido
        { get; set; }
        public string DNI
        { get; set; }
        public float Peso
        { get; set; }
        public float Talla
        { get; set; }
        public bool Login()
        {
            //try
            //{
            string consulta = "select count(*) from TUsuario where CodUsuario='" + CodUsuario + "' and Contrasena = '" + Contrasena + "'";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            conexion.Open();
            int i = Convert.ToInt32(comando.ExecuteScalar());
            conexion.Close();
            if (i == 1) return true;
            else return false;
            //}
            //catch (SqlException ex)
            //{
            //    return false;
            //}catch(Exception ex)
            //{
            //    return false;
            //}
            //finally
            //{
            //    conexion.Close();
            //}           
        }
    }
}
