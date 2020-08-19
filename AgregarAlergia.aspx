<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarAlergia.aspx.cs" Inherits="LoginHealthyLife.AgregarAlergia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <script src="SweetAlert/sweetalert2.all.min.js"></script>
     <script src="SweetAlert/sweetalert2.js"></script>
    <title>Agregar Alergia</title>

     <link rel="stylesheet" href="paginamaestra.css" />

</head>
<body>

      <script type="text/javascript">
          function validar(e) { // 1
              tecla = (document.all) ? e.keyCode : e.which; // 2
              if (tecla == 8) return true; // 3
              patron = /[A-Za-z\s]/; // 4
              te = String.fromCharCode(tecla); // 5
              return patron.test(te); // 6
          }
   </script>

    <h1>Ingrese el tipo de alergia que padece</h1>

    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="TextBox1" runat="server" placeholder="Ingresar Alergia" type="text" style="margin-left: 147px" Width="120px" onpaste="return false"
                onkeypress="return validad(event)" minlength="1" Maxlength="25"></asp:TextBox>

        </div>

        <br />

        <div>

            <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Height="37px" style="margin-left: 176px" Text="Agregar" Width="77px" OnClick="Button1_Click" />

        </div>

        <div>

            <br />



            <asp:GridView ID="GridView1" runat="server" style="margin-left: 135px; margin-top: 0px;" AutoGenerateColumns="False" Width="181px">

                <AlternatingRowStyle BackColor="White"/>
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Alergia" HeaderText="Alergia" />
                </Columns>

                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />   
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <br />

            <div>

                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>

            </div>

        </div>
        
    </form>
</body>
</html>
