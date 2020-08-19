<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformacionNutri.aspx.cs" Inherits="LoginHealthyLife.InformacionNutri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Información Nutricional</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Selecciona una opción con contenido nutricional útil</h2>

        <link rel="stylesheet" href="paginamaestra.css" />

        <div><asp:Button ID="Button1" runat="server" BackColor="#66FF66" Height="36px" Text="Carbohidratos" Width="99px" OnClick="Button1_Click" /> <br />

        </div>
        

        <br />

        <div>
            <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" Height="34px" Text="Lípidos" OnClick="Button2_Click" />
        </div>
        <br />
        <br />

        <div>
            <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" Height="33px" Text="Glucosa" OnClick="Button3_Click" />
        </div>
        
        <br />
        <br />

        <div>
            <asp:Button ID="Button4" runat="server" BackColor="#FF9966" OnClick="Button4_Click" Text="Dietas específicas para deportistas" Width="218px" Height="39px" />
        </div>
      
        <br />
        <br />

        <div>
            <asp:Button ID="Button5" runat="server" BackColor="Aqua" Text="Dietas para personas alérgicas" Width="216px" OnClick="Button5_Click" Height="40px" /> 
        </div>
        
        <br />
        <br />

        <div>
            <asp:Button ID="Button6" runat="server" Text="Dietas para personas diabéticas" BackColor="Red" OnClick="Button6_Click" Width="215px" Height="41px" />
        </div>
        
        <br />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" BackColor="#339966" Height="41px" OnClick="Button7_Click" Text="Volver a la Página Principal" Width="177px" />
        <br />
        <br />

    </form>
</body>
</html>
