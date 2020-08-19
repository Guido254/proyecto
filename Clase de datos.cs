using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace LoginHealthyLife
{
    public class Clase_de_datos
    {
        public static MySqlConnection ObtenerConexion()
        {
            MySqlConnection datos = new MySqlConnection("server=127.0.0.1; database=usuarios; Uid=root; pwd=;");
            datos.Open();
            return datos;
        }
    }
}