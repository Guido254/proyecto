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
    public class Clase_de_datos_2
    { 
    
            private static string _valorGlobal = string.Empty;
            public static string valorGlobal
            {
                get { return _valorGlobal; }
                set { _valorGlobal = value; }
            }
        
    }
}