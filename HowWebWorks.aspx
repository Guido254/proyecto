<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HowWebWorks.aspx.cs" Inherits="LoginHealthyLife.HowWebWorks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="howwebworks.css" />

</head>
<body >

    <h1><strong>How our Website works:</strong></h1>

    <p> Our Website, collects through a form, wich is displayed to user, data such as weight, age
        and height, the Website process the input data, calculating, in base of it, the BMI (Body Mass Index), through its formula,
        wich one is: weight in kg, divided by height squared.(BMI = weight [kg]/ height [m2]). Once calculated this
        data, it is classified in one of the following categories:
        </p>
        
<ol>
    <li>If BMI is less or equal to 18.5, it will be classified into the "Reinforced Diet" category.</li>
    <li>If BMI is more than or equal to 18.6 and less or equal to 24.9, it will be classified into the "Balance Diet" category.</li>
    <li>If BMI is more than or equal to 25 and less or equal to 29.9, it will be classified into the "Preventive Diet" category.</li>
    <li>If BMI is more than or equal to 30, it will be classified into the "Weightloss Diet" category.</li>

    </ol>

    <p> An specific diet will be assigned to each one of these categories, taking in count user needs,
        based in the BMI data previously calculated.
    </p>

    <p>
        In case that the user would have some kind of condition related to his or her health, or instead of this, the user
        practice some kind of sport, the user can direct to the "Know more about Nutrition" Section.    

    </p>
    
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Yellow" Height="41px" OnClick="Button1_Click" Text="Go Back to Main Page" Width="154px" />
        </div>
    </form>
</body>
</html>
