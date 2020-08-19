using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginHealthyLife
{
    public partial class Recolect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                double weight, height, heightsquared, result;
                int age;
                weight = Convert.ToDouble(TextBox1.Text);
                height = Convert.ToDouble(TextBox2.Text);

                if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox3.Text.Trim() != "")

                {
                    heightsquared = height * height;
                    result = weight / heightsquared;

                    if (result <= 18.5)

                    {
                        Label1.Text = ("The result of your BMI is " + string.Format("{0:0.00}", result) + ", Your BMI is in a low level. Click here to know some nutritional advices based on your results.");
                        Label1.Visible = true;
                        Button2.Visible = true;
                    }

                    if (result >= 18.6 && result <= 24.9)

                    {
                        Label2.Text = ("The result of your BMI is " + string.Format("{0:0.00}", result) + ", Your BMI is in a normal level. Click here to know some nutritional advices based on your results.");
                        Label2.Visible = true;
                        Button3.Visible = true;
                    }

                    if (result >= 25 && result <= 29.9)

                    {
                        Label3.Text = ("The result of your BMI is " + string.Format("{0:0.00}", result) + ", Your BMI is in a higher level than normal. Click here to know some nutritional advices based on your results.");
                        Label3.Visible = true;
                        Button4.Visible = true;
                    }

                    if (result >= 30)

                    {
                        Label4.Text = ("The result of your BMI is " + string.Format("{0:0.00}", result) + ", Your BMI is in a hight level, this could mean Obesity. Click here to know some nutritional advices based on your results.");
                        Label4.Visible = true;
                        Button5.Visible = true;
                    }

                }

            }
            catch
            {
                alert.Text = "<script>Swal.fire('WARNING', 'Please fill all the fields to process Data', 'error') </script>";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reforce.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Balance1.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prevention.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Weight.aspx");
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
            Response.Redirect("MasterPage1.aspx");
        }
    }
}