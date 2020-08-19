
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace LoginHealthyLife
{
    public class Clase_de_conexiones
    {
        //********************************************************************************      
        public static int UsuariosRepetidos(string usuario, string contra)
        {
            int valor = 0;
            MySqlConnection conexion = Clase_de_datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT id FROM datos WHERE nombre='" + usuario + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                Clase_de_conexiones.AgregarUsuario(usuario, contra);
            }
            conexion.Close();
            return valor;
        }
        //********************************************************************************
        public static int AgregarUsuario(string usuario, string contra)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into datos (nombre, contraseña) values ('{0}','{1}')", usuario, contra), Clase_de_datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //********************************************************************************       

        public static int agregar(Agregar pAlumno)
        {
            int retorno = 0;

            MySqlCommand comando = new MySqlCommand(string.Format("Insert into alergias (ID, Alergia) values('{0}','{1}')", pAlumno.Id, pAlumno.Alergia), Clase_de_datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }
    }
}