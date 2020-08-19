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
    public partial class LoginPaginaWebIngles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string strcon = "server=127.0.0.1;port=3306; database=usuarios; Uid=root; pwd=;";
        string str;
        MySqlCommand com;
        object obj;

        protected void Register_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")

            {
                string user, password;
                user = TextBox1.Text;
                password = EncryptString(TextBox2.Text, initVector);
                Clase_de_datos_2.valorGlobal = user;

                MySqlConnection con = new MySqlConnection("server=127.0.0.1; port=3306; database=usuarios;Uid=root; pwd=;");
                var cmd = "SELECT id from datos WHERE nombre='" + user + "' AND contraseña='" + password + "';";
                MySqlCommand comando = new MySqlCommand(cmd, con);
                con.Open();
                str = "select count(*) from login where nombre=@UserName and contraseña=@Password";
                com = new MySqlCommand(str, con);
                com.CommandType = CommandType.Text;
                com.Parameters.AddWithValue("@UserName", TextBox1.Text);
                com.Parameters.AddWithValue("@Password", TextBox2.Text);
                int retorno = Convert.ToInt32(comando.ExecuteScalar());

                if (retorno != 0)

                {
                    //Response.Write(@"<script language='javascript'>alert('wow your in !!');</script>");
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("MasterPage1.aspx");
                }

                else
                {
                    Label3.Visible = true;
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    alert.Text = "<script>Swal.fire('Data error', 'Your User and Password are incorrect', 'error') </script>";
                }
                con.Close();
            }
            else
            {
                Label3.Text = ("Please fill al fields before sign up");
                Label3.Visible = true;
                alert.Text = "<script>Swal.fire('WARNING', 'Please don´t leave empty fields', 'error') </script>";
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoginPaginaWeb.aspx");
        }

        protected void Registro_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateanUser.aspx");
        }
    }
}