<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recolectar.aspx.cs" Inherits="LoginHealthyLife.Recolectar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <script src="SweetAlert/sweetalert2.all.min.js"></script>
     <script src="SweetAlert/sweetalert2.js"></script>

    <title>Ingrese sus datos</title>

    <link rel="stylesheet" href="recolectar.css" />

</head>
<body >

    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function solonumeros(e) {

            var key;

            if (window.event) // IE
            {
                key = e.keyCode;
            }
            else if (e.which) // 
            {
                key = e.which;
            }

            if (key < 48 || key > 57) {
                return false;
            }

            return true;
        }

    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false
        }
    </script>

    <h2>Por favor ingrese los datos que se le indican en los campos vacíos.</h2>

    <form id="form1" runat="server">
        <div>
        <asp:TextBox ID="TextBox1" placeholder ="Ingrese su Peso en kg" type="text" runat="server" onpaste="return false"
            onkeypress="return NumCheck(event, this)"></asp:TextBox> 

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Por favor ingrese únicamente Números enteros o decimales" ValidationExpression="^[0-9]*$" Visible="False">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Ingrese únicamente números enteros o decimales" Visible="False">*</asp:RequiredFieldValidator>
        </div>

        <div></div>

        <div>
        <asp:TextBox ID="TextBox2" placeholder ="Ingrese su Estatura en metros" type="text" runat="server" onpaste="return false"
            onkeypress="return NumCheck(event, this)"></asp:TextBox> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Por favor ingrese únicamente Números enteros o decimales" ValidationExpression="^[0-9]*$" Visible="False">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Ingrese únicamente números enteros o decimales" Visible="False">*</asp:RequiredFieldValidator>
        </div>

        <div></div>

        <div>
        <asp:TextBox ID="TextBox3" placeholder ="Ingrese su Edad" type="text" runat="server" onpaste="return false"
            onkeypress="return NumCheck(event, this)"></asp:TextBox> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Por favor ingrese únicamente Números enteros o decimales" ValidationExpression="^[0-9]*$" Visible="False">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Ingrese únicamente números enteros o decimales" Visible="False">*</asp:RequiredFieldValidator>
        </div>

         <div></div>

        <div>
        <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" BorderStyle="Inset" Height="35px" OnClick="Button1_Click" Text="Calcular" Width="126px" /> 
        </div>

        <div></div>

        <div>
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Recomendaciones" Visible="False" BackColor="#FF9933" BorderStyle="Solid" />
</div>
        <p>
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>

        </p>
        <p>

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Recomendaciones" Visible="False" BackColor="#00FF99" BorderStyle="Solid" />
        </p>
        <p>
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>

        </p>
        <p>

        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Recomendaciones" Visible="False" BackColor="#99CCFF" BorderStyle="Solid" />
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
            </p>

        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Recomendaciones" Visible="False" BackColor="#9900FF" BorderStyle="Solid" />
        </p>
        <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Literal ID="alerta" runat="server"></asp:Literal>

        <br />
        <br />
        <asp:Button ID="Button6" runat="server" BackColor="Yellow" BorderStyle="Solid" OnClick="Button6_Click" Text="Volver a la Página Principal" />
            
    </form>
</body>
</html>
