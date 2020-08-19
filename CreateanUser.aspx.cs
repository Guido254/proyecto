using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace LoginHealthyLife
{
    public partial class CreateanUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox3.Text.Trim() != "")
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    
                    string encriptada;
                    string usuario;
                 
                    usuario = TextBox1.Text;
                    encriptada = EncryptString(TextBox2.Text, initVector);
                   
                    if (Clase_de_conexiones.UsuariosRepetidos(usuario, encriptada) == 0)
                    {
                        alerta.Text = "<script>Swal.fire('Register Succesful', '¡Thanks for choose us!', 'success'); </script>";

                        
                        
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                    
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('This user already exists', 'Select a new username', 'error'); </script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Both passwords are not the same', 'Repeat your Password.', 'error');</script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('WARNING', 'Do not leave empty fields', 'error') </script>";
            }
        }
        private const string initVector = "pemgail9uzpgzl88";
       
        private const int keysize = 256;
        
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPaginaWebIngles.aspx");
        }
    }
}