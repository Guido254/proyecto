<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueesHealthyLife.aspx.cs" Inherits="LoginHealthyLife.QueesHealthyLife" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="queeshl.css" />

</head>
<body >

    <h3><strong>¿Qué es HeathyLife?</strong></h3>
<p>HealthyLife es un sitio web, en el cual usted puede 
encontrar consejos para su salud, en base a su IMC (Índice de Masa Corporal) y los hábitos de su estilo de vida.</p>

<h3><strong>¿Quienes somos?</strong></h3>

	<p>Somos un grupo de estudiantes de <em>Bachillerato</em>, cursando la opción técnica en <strong>Sistemas Informáticos e Inglés</strong>.
	Hemos desarrollado este sitio web, por las intenciones, las cuales compartimos en el apartado "Nuestros Objetivos".

    </p>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="35px" Text="Volver a la Página Principal" Width="193px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
