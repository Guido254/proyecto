<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NutriInformation.aspx.cs" Inherits="LoginHealthyLife.NutriInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nutritional Information</title>
</head>
<body>
    <form id="form1" runat="server">
 <h1>Select an option with useful nutritional content </h1>

         <link rel="stylesheet" href="paginamaestra.css" />
        <div>
             <asp:Button ID="Button1" runat="server" BackColor="#66FF66" Height="50px" Text="Carbohydrates" Width="109px" OnClick="Button1_Click" /> <br />
        </div>
       

        <br />
        <div>
            <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" Height="42px" Text="Lipids" OnClick="Button2_Click" Width="108px" /><br />
        </div>
        
        <br />
        <div>
            <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" Height="41px" Text="Glucose" OnClick="Button3_Click" Width="102px" />
        </div>
        
        <br />
        <br />
        <div>
        <asp:Button ID="Button4" runat="server" BackColor="#FF9966" OnClick="Button4_Click" Text="Specific Diets for Sport People" Width="194px" Height="49px" />
        </div>
        <br />
        <br />
        <div>
            <asp:Button ID="Button6" runat="server" BackColor="Aqua" OnClick="Button6_Click" Text="Diets for Allergic People" Height="52px" />
        </div>
        
        <br />
        <br />
        <div>
             <asp:Button ID="Button7" runat="server" BackColor="Red" OnClick="Button7_Click" Text="Diets fot Diabetic People" Height="48px" />
        </div>
       
        <br />
        <br />
        <br />
        <div></div>
        <asp:Button ID="Button8" runat="server" BackColor="#339966" Height="41px" OnClick="Button8_Click" Text="Go Back to Main Page" Width="151px" />

    </form>
</body>
</html>
