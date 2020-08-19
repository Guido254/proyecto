using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace LoginHealthyLife
{
    public partial class AgregarAlergia : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=usuarios; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LoginPaginaWeb.aspx");
            }
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from alergias";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conec.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "")
            {
                try
                {

                    Agregar pAlumno = new Agregar();
                    pAlumno.Alergia = TextBox1.Text.Trim();
                    int resultado = Clase_de_conexiones.agregar(pAlumno);
                    conec.Open();
                    MySqlCommand cmd = conec.CreateCommand();
                    cmd.CommandText = "select * from alergias";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    conec.Close();

                    alerta.Text = "<script>Swal.fire('El tipo de alergia se agregó con exito' 'success'); </script>";
                    TextBox1.Text = "";
                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Algo salió mal', 'Intente nuevamente', 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Advertencia', 'No deje espacios en blanco', 'error') </script>";
            }

        }

    }
}