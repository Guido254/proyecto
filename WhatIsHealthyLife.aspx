<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhatIsHealthyLife.aspx.cs" Inherits="LoginHealthyLife.WhatIsHealthyLife" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="queeshl.css" />

</head>
<body>

    <h3><strong>What is HeathyLife?</strong></h3>

<p>HealthyLife is a Website, where you can find tips for 
your health, this, taking in count the BMI (Body Mass Index) and your Lifestyle habits.</p>

 <h3><strong>Who we are?</strong></h3>

	<p>We are a group of students from <strong>Computer Systems and English Freshman</strong>.
	We have developed this Website, by the intentions wich we share in the section called "Our Objectives".

 </p>

    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Height="41px" Text="Go Back to Main Page" Width="156px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
