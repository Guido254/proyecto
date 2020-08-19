using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace LoginHealthyLife
{
    public partial class PaginaMaestra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["username"].ToString();
            }

            catch (Exception)

            {
                Response.Redirect("LoginPaginaWeb.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)

        {
            Response.Redirect("QueesHealthyLife.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)

        {
            Response.Redirect("ObjetivosPTC.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)

        {
            Response.Redirect("InstruccionesWeb.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)

        {
            Response.Redirect("FuncionamientoWeb.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)

        {
            Response.Redirect("Recolectar.aspx");
        }
        protected void btncerrar_Click(object sender, EventArgs e)

        {
            Session.Remove("username");
            Response.Redirect("LoginPaginaWeb.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("InformacionNutri.aspx");
        }
        
        
    }
}