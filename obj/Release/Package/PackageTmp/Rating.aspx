<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="Irecycle.Rating" Async="true" culture="auto" uiculture="auto" EnableSessionState="True"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 138px;
            width: 163px;
        }
             .ignor {
                width: 90px;
                height: 39px;
                padding: 5px 0;
                color: #ffffff;
                font-size: 18px;
                text-align: center;
                text-decoration: none;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
                background-color: #00bc3f;
            }
 
    .ignor:hover {
        color: #ffffff;
        background-color: #01d849;
    }
          .Star
        {
            background-image: url(images/starempty.png);
            height: 50px;
            width: 50px;
        }
        .WaitingStar
        {
            background-image: url(images/starwaiting.png);
            height: 50px;
            width: 50px;
        }
        .FilledStar
        {
            background-image: url(images/starFilled.png);
            height: 50px;
            width: 50px;
        }
        #TextArea1 {
            height: 56px;
        }
         body {  
        margin: 0px auto;  
        width: 390px;  

        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;  
        background: #ffffff;  
        }  
        .auto-style3 {
            width: 253px;
        }
        </style>
</head>
<body style="width: 250px; height: 238px">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <cc1:Rating ID="Rating1" AutoPostBack="true"  runat="server"
        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
        FilledStarCssClass="FilledStar">
    </cc1:Rating>
       <br />
            <div>
       <asp:Label runat="server" Text="Your Comment"></asp:Label><br />
            <textarea runat="server" id="TextArea1" name="TextArea1" cols="20" rows="2" class="auto-style2"></textarea>
        <br />
        <asp:Button ID="Button1" runat="server" Text="SEND" CssClass="ignor" OnClick="Button1_Click" />
                </div>
              <asp:Label ID="lblRatingStatus" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lab2" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="user1" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="user2" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="user3" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="user4" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="user5" runat="server" Text="" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
