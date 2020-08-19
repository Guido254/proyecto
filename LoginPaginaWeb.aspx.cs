using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;

namespace LoginHealthyLife
{
    public partial class LoginPaginaWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoginPaginaWebIngles.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        string strcon = "server=127.0.0.1; port=3306; database=usuarios; Uid=root; pwd=;";
        string str;
        MySqlCommand com;
        object obj;

        protected void Registro_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string usuario, contra;
                usuario = TextBox1.Text;
                contra = EncryptString(TextBox2.Text, initVector);
                Clase_de_datos_2.valorGlobal = usuario;

                MySqlConnection con = new MySqlConnection("server=127.0.0.1; port=3306; database=usuarios;Uid=root; pwd=;");
                var cmd = "SELECT id from datos WHERE nombre='" + usuario + "' AND contraseña='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, con);
                con.Open();
                str = "select count(*) from usuarios where nombre=@UserName and contraseña=@Password";
                com = new MySqlCommand(str, con);
                com.CommandType = CommandType.Text;
                com.Parameters.AddWithValue("@UserName", TextBox1.Text);
                com.Parameters.AddWithValue("@Password", TextBox2.Text);
                int retorno = Convert.ToInt32(comando.ExecuteScalar());

                if (retorno != 0)

                {
                    //Response.Write(@"<script language='javascript'>alert('wow your in !!');</script>");
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("PaginaMaestra.aspx");
                }
                else
                {
                    Label3.Visible = true;
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    alerta.Text = "<script>Swal.fire('Error en sus datos', 'Su usuario o contraseña no son correctos', 'error') </script>";

                }
                con.Close();
            }
            else
            {
                Label3.Text = ("Por favor complete todos los campos antes de ingresar");
                Label3.Visible = true;
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'Por favor no deje espacios en blanco', 'error') </script>";
                alerta.Visible = true;
            }
        }

        private const string initVector = "pemgail9uzpgzl88";//llave del encriptado        
        private const int keysize = 256;// Esta constante se usa para determinar el tamaño de clave del algoritmo de cifrado
        //Encriptar
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CrearUsuario.aspx");
        }
    }
}
    
