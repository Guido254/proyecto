<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recolect.aspx.cs" Inherits="LoginHealthyLife.Recolect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <script src="SweetAlert/sweetalert2.all.min.js"></script>
     <script src="SweetAlert/sweetalert2.js"></script>
    <title>Enter your Data</title>

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

    <h2>Please fill the Data requested in the following fields.</h2>

    <form id="form1" runat="server">
        <div>
         <asp:TextBox ID="TextBox1" placeholder ="Enter your Weight in kg" type="text" runat="server" onpaste="return false"
          onkeypress="return NumCheck(event, this)"></asp:TextBox> 
        </div>
         
        <div></div>

        <div>
        <asp:TextBox ID="TextBox2" placeholder ="Enter your Height in meters" type="text" runat="server" onpaste="return false"
         onkeypress="return NumCheck(event, this)"></asp:TextBox> 
        </div>

         <div></div>
        <div>
        <asp:TextBox ID="TextBox3" placeholder ="Enter your Age" type="text" runat="server" onpaste="return false" 
         onkeypress="return NumCheck(event, this)"></asp:TextBox> 
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" BorderStyle="Inset" Height="35px" OnClick="Button1_Click" Text="Calculate" Width="126px" /> 
        </div>

        <div></div>

        <div>
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
             </div>

        <div></div>

         <div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Advices" Visible="False" BackColor="#FF9933" BorderStyle="Solid" />
             </div>

        <p>
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>

        </p>
        <p>

            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Advices" Visible="False" BackColor="#00FF99" BorderStyle="Solid" />
        </p>
        <p>
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>


        </p>
        <p>

            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Advices" Visible="False" BackColor="#99CCFF" BorderStyle="Solid" />
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
            </p>


        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Advices" Visible="False" BackColor="#9900FF" BorderStyle="Solid" />
        </p>
        <asp:Label ID="Label5" runat="server" Text="Please fill all fields to proccess Data." Visible="False"></asp:Label> <br />


        <asp:Literal ID="alert" runat="server"></asp:Literal> 
        <br />
        <br />


        <asp:Button ID="Button6" runat="server" Text="Go Back to Main Page" BackColor="Yellow" BorderStyle="Solid" Height="36px" OnClick="Button6_Click" />


    </form>
</body>
</html>
