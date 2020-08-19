<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMaestra.aspx.cs" Inherits="LoginHealthyLife.PaginaMaestra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pagina Principal</title>

    <link rel="stylesheet" href="paginamaestra.css" />

</head>

<body>

    <h1>Bienvenido/a a su plataforma nutricional HealthyLife</h1>

 <h2>Esperamos que nuestro sitio web te sea de ayuda.</h2>

 
    <form id="form1" runat="server">

 <p>
        <asp:Button ID="Button7" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Cerrar Sesión" OnClick="btncerrar_Click" BackColor="white" Height="27px" Width="119px" /> 
        </p>

        

        <div>
        <asp:Button ID="Button8" runat="server" BackColor="Yellow"  OnClick="Button1_Click" Text="¿Qué es HealthyLife?"   Height="55px" Width="350px"/> 
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button9" runat="server" BackColor="#00CCFF"  Text="Nuestros Objetivos" OnClick="Button2_Click" Height="55px" Width="350px" /> 
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button10" runat="server" BackColor="#CC9900"  OnClick="Button4_Click" style="margin-top: 9px" Text="¿Cómo funciona HealthyLife ?" Height="55px" Width="350px" />
        </div>

                <div></div>

        <div>
            <asp:Button ID="Button11" runat="server" BackColor="#FF6600"  Text="¿Cómo utilizar HealthyLife?"  OnClick="Button3_Click" Height="55px" Width="350px"/>
        </div>


        <div></div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

        <div>
        <asp:Button ID="Button12" runat="server" BackColor="#00CC00"  OnClick="Button5_Click" Text="Calcular su IMC" Height="55px" Width="350px" /> 
       </div>

        <div></div>

         <div>
        <asp:Button ID="Button13" runat="server" Text="Haz click aquí para conocer más sobre Nutrición" BackColor="#FF9933"  OnClick="Button6_Click" Height="55px" Width="350px" />
              </div>

         <div></div>

<div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    </form>

  </body>
</html>
