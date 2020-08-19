using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginHealthyLife
{
    public partial class InformacionNutri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carbohidratos.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lipidos.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Glucosa.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeportesDietas.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonasAlergicas.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonasDiabeticas.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaMaestra.aspx");
        }
    }
}