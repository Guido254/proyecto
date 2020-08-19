<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonasAlergicas.aspx.cs" Inherits="LoginHealthyLife.PersonasAlergicas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="PersonasAlergicas.css" />

</head>

<body>
    <form id="form1" runat="server">
         <h2>Aqui va a encontrar diferentes dietas para personas que padecen algun tipo de alergia</h2>
            <h3>Cabe recalcar que únicamente se incluyen dietas para las alergias más comunes. Por lo tanto, si posee algún otro tipo de condición alérgica, consulte a un especialista en este tipo de condiciones.</h3>
       <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alergia al huevo" BackColor="#FFFF99" Height="55px" Width="350px" />
        </div>

        <div></div>

         <div>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Alergia al pescado" BackColor="#FF6600"  Height="55px" Width="350px"/>
        </div>

        <div></div>

        <div>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Alergia a la leche" BackColor="#00FF99" Height="55px" Width="350px" />
         </div>

         <div></div>

        <div>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Alergia al maní" BackColor="#0099FF" Height="55px" Width="350px"/>
         </div>

        <div></div>

        <div>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Alergia a los mariscos" BackColor="#CC9900" Height="55px" Width="350px"/>
         </div>

        <div></div>

        <div>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Alergia a las nueces" BackColor="#CC99FF" Height="55px" Width="350px"/>
             <br />
            <br />
            <asp:Button ID="Button8" runat="server" BackColor="#993300" Height="48px" OnClick="Button8_Click" Text="Agregar Alergia" Width="349px" />
             </div>

         <p>
             &nbsp;</p>
         <asp:Button ID="Button7" runat="server" BackColor="#99CC00" Height="41px" OnClick="Button7_Click" Text="Volver a la Página Anterior" Width="172px" />

    </form>
</body>
</html>
