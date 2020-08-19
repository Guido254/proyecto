<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FuncionamientoWeb.aspx.cs" Inherits="LoginHealthyLife.FuncionamientoWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="howwebworks.css" />

</head>
<body bgcolor="lightgrey">

    <h1><strong>Funcionamiento de nuestro Sitio Web:</strong></h1>

    <p> Nuestro sitio web recolecta, a través de un formulario, el cual es mostrado al usuario, datos tales como el peso, la edad
        y la altura, el Sitio Web procesa los datos ingresados, calculando, en base a estos, el IMC (Índice de Masa Corporal), mediante su respectiva fórmula,
        la cual es: peso en kg, dividido entre la estatura elevada al cuadrado (IMC = peso [kg]/ estatura [m2]). Una vez obtenido
        este dato, el mismo se clasifica según los siguientes rangos:
        </p>
        
<ol>
    <li>Si el IMC es menor o igual a 18.5, se clasificará dentro del rango "Dieta Reforzada".</li>
    <li>Si el IMC es mayor o igual a 18.6 y menor o igual a 24.9, se clasificará dentro del rango "Dieta Balanceada".</li>
    <li>Si el IMC es mayor o igual a 25 y menor o igual a 29.9, se clasificará dentro del rango "Dieta Preventiva".</li>
    <li>Si el IMC es mayor o igual a 30, se clasificará dentro del rango "Dieta de Pérdida de Peso".</li>

    </ol>

    <p> A cada uno de estos rangos se le asigna una dieta en concreto, de acuerdo con las necesidades del usuario,
        basandose en el dato del Índice de Masa Corporal calculado previamente.
    </p>
    
    <p>
        En caso de que el usuario posea algún tipo de condición relacionada a su salud, o bien se dedique a la práctica de algún
        deporte, el usuario podrá dirigirse hacia el apartado "Conoce más sobre Nutrición".
    </p>
    <p>
        &nbsp;</p>

    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" BackColor="Yellow" Height="36px" OnClick="Button1_Click" Text="Volver a la Página Principal" Width="183px" />
        </div>
    </form>
</body>
</html>
