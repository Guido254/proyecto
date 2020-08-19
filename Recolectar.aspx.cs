using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LoginHealthyLife
{
    public partial class Recolectar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                double peso, altura, alturacuadrado, resultado;
                int edad;
                peso = Convert.ToDouble(TextBox1.Text);
                altura = Convert.ToDouble(TextBox2.Text);

                if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox3.Text.Trim() != "")

                {
                    alturacuadrado = altura * altura;
                    resultado = peso / alturacuadrado;

                    if (resultado <= 18.5)

                    {
                        Label1.Text = ("El resultado de su IMC es de " + string.Format("{0:0.00}", resultado) + ", Su IMC se encuentra en un nivel bajo. Haga click aquí para conocer algunas sugerencias nutricionales según su resultado.");
                        Label1.Visible = true;
                        Button2.Visible = true;
                    }

                    if (resultado >= 18.6 && resultado <= 24.9)

                    {
                        Label2.Text = ("El resultado de su IMC es de " + string.Format("{0:0.00}", resultado) + ", Su IMC se encuentra dentro de los niveles normales. Haga click aquí para conocer algunas sugerencias nutricionales según su resultado.");
                        Label2.Visible = true;
                        Button3.Visible = true;
                    }

                    if (resultado >= 25 && resultado <= 29.9)

                    {
                        Label3.Text = ("El resultado de su IMC es de " + string.Format("{0:0.00}", resultado) + ", Su IMC se encuentra por encima del promedio. Haga click aquí para conocer algunas sugerencias nutricionales según su resultado.");
                        Label3.Visible = true;
                        Button4.Visible = true;
                    }

                    if (resultado >= 30)

                    {
                        Label4.Text = ("El resultado de su IMC es de " + string.Format("{0:0.00}", resultado) + ", Su IMC se encuentra en un nivel alto, esto puede significar Obesidad. Haga click aquí para conocer algunas sugerencias nutricionales según su resultado.");
                        Label4.Visible = true;
                        Button5.Visible = true;
                    }

                }

            }
            catch
            {
                Label5.Visible = true;
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'Por favor rellene todos los campos para procesar los datos', 'error') </script>";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Refuerzo.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Balance.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prevencion.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Peso.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Button5.Visible = false;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Button5.Visible = false;
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Button5.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaMaestra.aspx");
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        }
    }
