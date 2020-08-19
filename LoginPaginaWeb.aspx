<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPaginaWeb.aspx.cs" Inherits="LoginHealthyLife.LoginPaginaWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Acceder al sitio</title>

    <link href="Login.css" rel="stylesheet" />
</head>
<body id="body">
    <form id="form1" runat="server">
        <div id="log">
        <div class="sec2">
            <div class="container">
                <div class="social">

                </div>

                <div class="content">
                    <h2>Ingresar</h2>

                    <asp:TextBox ID="TextBox1" placeholder="Ingrese su Usuario" minlength="4" MaxLength="15" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" placeholder="Ingrese su Contraseña" minlength="4" MaxLength="15" runat="server" type="Password"></asp:TextBox><br />

                    <asp:Button ID="Registro" runat="server" Text="Registrarse" OnClick="Registro_Click" BackColor="Black" BorderColor="green"/> 
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" BackColor="#33CCFF" BorderColor="#000099" BorderStyle="Groove" Text="Usuario o Contraseña inconrrectos." Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Width="93px" ImageUrl="~/Stock/Usa.png" OnClick="ImageButton1_Click" Height="49px" BorderStyle="Ridge" /> 
                    <br />
                    <br />
                    <asp:Literal ID="alerta" runat="server"></asp:Literal>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Crear Usuario" BackColor="Black" BorderColor="green"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
