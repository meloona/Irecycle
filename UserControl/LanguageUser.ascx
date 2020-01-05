<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LanguageUser.ascx.cs" Inherits="Irecycle.UserControl.LanguageUser" %>

 <style>
   
     .auto1 {
         cursor:pointer;
         border-style: none;
         border-color: inherit;
         border-width: medium;
         background-color: transparent;
         background-repeat: no-repeat;
         cursor: pointer;
         overflow: hidden;
         outline: none;
         float: none;
         color:black;
         font-size: 5px;
         text-decoration: none;
         font-weight: normal;
     }
     .auto1:hover{
          color: #0026ff;
        text-decoration: underline;
        text-decoration-color:gray;
        text-decoration-style:double;
     }
      .auto1:active{
         color: #0026ff;
        text-decoration: underline;
     }
      .auto2:hover{
          color: #0026ff;
        text-decoration: underline;
        text-decoration-color:gray;
        text-decoration-style:double;
     }
     .auto2:active{
         color: #0026ff;
        text-decoration: underline;
     }
 </style> 
<asp:Button runat="server" CssClass="auto1" ID="ImgBtn_En" Font-Size="Small"  Font-Bold="True" Text="English |"   onclick="ImgBtn_En_Click" Height="16px" Width="60px" ></asp:Button> 
<asp:Button runat="server" CssClass="auto1" ID="ImgBtn_Ar"  Font-Size="Small" Font-Bold="True" Text="العربية"   onclick="ImgBtn_Ar_Click" Height="16px" Width="34px" ></asp:Button>

