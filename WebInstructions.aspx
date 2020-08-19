<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebInstructions.aspx.cs" Inherits="LoginHealthyLife.WebInstructions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="queeshl.css" />

</head>
<body >

     <h3>Steps followed to use this Website:</h3>
<ol>
	<li>Log in with an user and password previously created.</li>
	<li>Complete the form with the required data.</li>
	<li>Wait the processes of data.</li>
	<li>Check the obtained results.</li>
</ol>

    <p>
        In case of having some kind of condition related with the kind of food that can be consumed or you practice some kind of sport,
        please go to the "Know more about nutrition" Section.
    </p>

    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#9900FF" Height="43px" Text="Go Back to Main Page" Width="155px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
