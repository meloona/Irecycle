<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LanguageUserControl.ascx.cs" Inherits="Irecycle.UserControl.LanguageUserControl" %>

 <style>
   
     .auto-style1 {
         cursor:pointer;
         border-style: none;
         border-color: inherit;
         border-width: medium;
         background-color: transparent;
         background-repeat: no-repeat;
         cursor: pointer;
         overflow: hidden;
         outline: none;
         float: right;
         margin-top: 15px;
          color: #ffffff;
         font-size: 18px;
         text-decoration: none;
         font-weight: normal;
     }
     .auto-style1:hover{
          color: #0026ff;
        text-decoration: underline;
        text-decoration-color:gray;
        text-decoration-style:double;
     }
     .auto-style1:active{
         color: #0026ff;
        text-decoration: underline;
     }
      .auto-style2 {
         cursor:pointer;
         border-style: none;
         border-color: inherit;
         border-width: medium;
         background-color: transparent;
         background-repeat: no-repeat;
         cursor: pointer;
         overflow: hidden;
         outline: none;
         float: right;
         margin-top: 15px;
         margin-left:10px;
          color: #ffffff;
         font-size: 18px;
         text-decoration: none;
         font-weight: normal;
     }
     .auto-style2:hover{
          color: #0026ff;
        text-decoration: underline;
        text-decoration-color:gray;
        text-decoration-style:double;
     }
     .auto-style2:active{
         color: #0026ff;
        text-decoration: underline;
     }
 </style> 
<asp:Button runat="server" CssClass="auto-style1" ID="ImgBtn_Ar"  Font-Size="Medium" Font-Bold="True" Text="|  العربية" Width="59px"  Height="37px"  onclick="ImgBtn_Ar_Click"></asp:Button>
<asp:Button runat="server" CssClass="auto-style2" ID="ImgBtn_En" Font-Size="Medium"  Font-Bold="True" Text="English" Width="64px" Height="34px"  onclick="ImgBtn_En_Click" ></asp:Button> 
