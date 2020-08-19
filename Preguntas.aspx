<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preguntas.aspx.cs" Inherits="LoginHealthyLife.Preguntas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Rellene el siguiente formulario para recolectar datos:"></asp:Label> 
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="¿Cuánto Ejercicio realiza normalmente?"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Mucho" OnClick="Button1_Click" /> 
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" style="margin-left: 0px" Text="Poco" />
        <br />
        <br />
        ¿Padece de algún tipo de condición en su salud?<br />
        <asp:Button ID="Button3" runat="server" Text="No, estoy completamente sano" Width="193px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Si, padezco alguna condición" Width="193px" />
        <br />
        <br />
        Seleccione el tipo de condición que padece:<br />
        <br />
        <asp:Button ID="Button6" runat="server" Text="Hipertensión" Width="94px" />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" Text="Diabetes" />
        <br />
        <br />
        <asp:Button ID="Button8" runat="server" Text="Alergia" /> 
        <br />
        <br />
        <asp:Button ID="Button9" runat="server" Text="Calcule su IMC " OnClick="Button9_Click" Width="104px" />
    </form>
</body>
</html>
