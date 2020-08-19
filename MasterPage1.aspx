<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage1.aspx.cs" Inherits="LoginHealthyLife.MasterPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Main Page</title>

    <link rel="stylesheet" href="paginamaestra.css" />

</head>

<body>

     <h1>Welcome to HealthyLife, your nutritional platform</h1>

    <h2>We hope our Website would be useful to you.</h2>

    <form id="form1" runat="server">

        <p>
        <asp:Button ID="btncerrar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Log Out" OnClick="btncerrar_Click" BackColor="white" Height="27px" Width="119px" /> 
       </p>


        <div>
        <asp:Button ID="Button1" runat="server" BackColor="Yellow"  OnClick="Button1_Click" Text="What is HealthyLife ?"   Height="55px" Width="350px"/> 
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button2" runat="server" BackColor="#00CCFF"  Text="Our Objectives" OnClick="Button2_Click" Height="55px" Width="350px" /> 
        </div>

        <div></div>

        <div>
        <asp:Button ID="Button4" runat="server" BackColor="#CC9900"  OnClick="Button4_Click" style="margin-top: 9px" Text="How HealthyLife works ?" Height="55px" Width="350px" />
        </div>

                <div></div>

        <div>
            <asp:Button ID="Button3" runat="server" BackColor="#FF6600"  Text="How to use HealthyLife ?"  OnClick="Button3_Click" Height="55px" Width="350px"/>
        </div>


        <div></div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

        <div>
        <asp:Button ID="Button5" runat="server" BackColor="#00CC00"  OnClick="Button5_Click" Text="Calculate your BMI" Height="55px" Width="350px" /> 
       </div>

        <div></div>

         <div>
        <asp:Button ID="Button6" runat="server" Text="Click here to know more about Nutrition" BackColor="#FF9933"  OnClick="Button6_Click" Height="55px" Width="350px" />
              </div>

         <div></div>

        <div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
    </form>

  </body>
</html>
