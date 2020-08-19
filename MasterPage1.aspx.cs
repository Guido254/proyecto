using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace LoginHealthyLife
{
    public partial class MasterPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["username"].ToString();

            }

            catch (Exception ex)

            {
                Response.Redirect("LoginPaginaWebIngles.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            Response.Redirect("WhatIsHealthyLife.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)

        {
            Response.Redirect("PTCObjectives.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)

        {
            Response.Redirect("HowWebWorks.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)

        {
            Response.Redirect("WebInstructions.aspx");
        }

        protected void btncerrar_Click(object sender, EventArgs e)

        {
            Session.Remove("username");
            Response.Redirect("LoginPaginaWebIngles.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recolect.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("NutriInformation.aspx");
        }
    }
}