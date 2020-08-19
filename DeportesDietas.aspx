<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeportesDietas.aspx.cs" Inherits="LoginHealthyLife.DeportesDietas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="SportDiets.css" />

</head>

<body>
    <form id="form1" runat="server">
        <h1>Seleccione el deporte que practica</h1>
        <h3>Esperamos que nuestros servicios le sean de ayuda</h3>

        <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Soccer" BackColor="Lime" Height="55px" Width="350px" />
        </div>

       <div></div>

        <div>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Swimming" BackColor="#66FFFF" Height="55px" Width="350px"  />
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Basketball" BackColor="#FF9900" Height="55px" Width="350px" />
       </div>

        <div></div>
        
        <div>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Atletism" BackColor="#FFFF99" Height="55px" Width="350px"  />
            <br />
            <br />
        </div>
        
        <asp:Button ID="Button5" runat="server" BackColor="#00CC99" Height="34px" OnClick="Button5_Click" Text="Volver a la Página Anterior" Width="183px" />
        
    </form>
</body>
</html>
