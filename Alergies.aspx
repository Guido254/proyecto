<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alergies.aspx.cs" Inherits="LoginHealthyLife.Alergies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="PersonasAlergicas.css" />

</head>

<body>
    <form id="form1" runat="server">
     
             <h2> Here you will find different diets for people who suffer from some kind of Allergy </h2>
            <h3>We emphasize that there only are taken diets for the most common types of allergies, if you have another allergic condition type, you should talk with an specialist in allergic types.</h3>
    

        <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Egg Allergy" BackColor="#FFFF99" Height="55px" Width="350px" />
       </div>

        <div></div>

        <div>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Fish Allergy" BackColor="#FF6600" Height="55px" Width="350px" />
        </div>

        <div></div>

        <div>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Milk Allergy" BackColor="#00FF99" Height="55px" Width="350px"/>
        </div>

        <div></div>

        <div>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Nut Allergy" BackColor="#0099FF" Height="55px" Width="350px"/>
        </div>

         <div></div>

        <div>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Seafood Allergy" BackColor="#CC9900" Height="55px" Width="350px"/>
         </div>

         <div></div>

        <div>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Peanut Allergy" BackColor="#CC99FF" Height="55px" Width="350px"/>
        </div>
             <p>
                 &nbsp;</p>
             <asp:Button ID="Button7" runat="server" BackColor="#99CC00" Height="36px" OnClick="Button7_Click" Text="Go Back to the Previous Page" Width="193px" />
    </form>
</body>
</html>
