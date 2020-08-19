<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prevencion.aspx.cs" Inherits="LoginHealthyLife.Prevencion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="DIETA PARA SOBREPESO"></asp:Label>
            <p>
                El sobrepeso, al igual que la obesidad, es una acumulación excesiva de grasa corporal. Para diferenciar el sobrepeso de la obesidad, utilizamos el Índice de Masa Corporal (IMC), que se calcula dividiendo el peso (en kilogramos) sobre la altura (en metros) al cuadrado. Si el resultado obtenido se encuentra entre 25 y 29,9 k/m² existe sobrepeso; si  los 30 k/m² se habla de obesidad.<br />
                <br />
                Para rebajar el sobrepeso, se seguirá una rutina alimenticia equilibrada y un plan regular de ejercicio físico. Se debe tener presente que las dietas muy restrictivas nunca son saludables porque provocan una importante pérdida de masa magra (músculo) y favorecen los trastornos alimentarios. Por tanto, un plan alimentario ideal para actuar contra el sobrepeso siempre ha de ser normocalórico o con una mínima restricción de calorías.<br />
                <br />

Las recomendaciones alimentarias son las mismas que para la población general, limitando principalmente la ingesta de grasas saturadas. Para ello, se tendrá en cuenta la siguiente selección de alimentos:<br />
                <br />

Lácteos. La leche y los yogures serán desnatados; los quesos, magros. Se aconsejan 2-3 raciones al día para asegurar un aporte adecuado de calcio.<br />
                <br />
Carnes y pescados. Se seleccionarán cortes magros y se retirará la grasa visible antes de la cocción. En el caso de las aves, quitar toda la piel. Se evitarán alimentos ricos en grasa saturada, como los embutidos y el tocino. Se recomienda consumir pescado al menos tres veces a la semana.<br />
                <br />
Huevos. Es un alimento muy completo que presenta una proteína de alto valor biológico. Se incluirán preferentemente cocido o pasados por agua y se evitará la fritura.<br />
                <br />
Cereales, legumbres y tubérculos. Aportan principalmente hidratos de carbono complejos, muy útiles en el control del apetito porque aumentan la sensación de saciedad. De este grupo, se restringirá la bollería (croissants, ensaimadas, magdalenas, donuts, etcétera).<br />
                <br />
Frutas y verduras. Elige frutas crudas de consistencia firme, evitando las piezas cocidas o los batidos que aportan menor saciedad. Se recomienda un alto consumo de verduras y hortalizas. Lo ideal es consumir al menos cinco raciones diarias entre frutas y verduras.<br />
                <br />
Grasa y aceites. Utiliza métodos de cocción que precisen poca grasa (plancha, horno, papillote), reduciendo el consumo de frituras, salsas grasas y rebozados. Se recomienda el uso del aceite de oliva virgen extra.<br />
                <br />
Azúcar y derivados. Restringir los alimentos con alta concentración de azúcares: el uso de azúcar, mermelada y refrescos. En su lugar, utiliza edulcorantes y refrescos dietéticos que no aporten calorías.<br />
                <br />
Es importante recordar que la actividad física regular resulta imprescindible en el tratamiento del obrepeso, especialmente durante la etapa de mantenimiento para evitar la recuperación del peso perdido.
            </p>
        </div>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Volver a la pagina principal" />
    </form>
</body>
</html>
