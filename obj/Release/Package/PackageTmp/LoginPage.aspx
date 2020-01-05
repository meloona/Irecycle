<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Irecycle.LoginPage" Async="true" meta:resourcekey="PageResource1" uiculture="auto" culture="auto" EnableSessionState="True"  %>

<%@ Register Src="~/UserControl/LanguageUserControl.ascx" TagName="LanguageUserControl" TagPrefix="uc1" %>
<%@ Register Src="~/UserControl/LanguageUser.ascx" TagName="LanguageUser" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
<link href="style.css" rel="stylesheet" type="text/css"/>

    <style type="text/css">
        .auto-style38 {
            width: 270px;
            height: 40px;
        }       
        .auto-style8 {
            height: 99px;
            text-align: center;
            vertical-align: middle;
            width: 990px;
        }
       .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
        .auto-style16 {
            width: 740px;
        }
      
        .auto-style27 {
            width: 330px;
        }
              
        .auto-style30 {
            width: 301px;
            height: 41px;
        }
              
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
      
        .auto-style40 {
            width: 78px;
            height: 38px;
        }
      
        .bodyimg{
          background-image:url(images/home3.png)
      }
        .button {
           cursor:pointer;
            width: 273px;
            height: 39px;
            padding: 5px 0;
            color: #ffffff;
            font-size: 20px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #21b227;
        }

        .button:hover {
	        color: #ffffff;
	        background-color:#2fe937;
        }
         .lablebutton {
           cursor:pointer;
           
            padding: 5px 0;
            color: #333333;
            font-size: 20px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif; 
        }

        .lablebutton:hover {
            text-decoration-line:underline;
	        color: #ffffff;
	        color:#0026ff;
        }
    
           .auto-style47 {
            width: 192px;
        }
    .auto-style {
         cursor:pointer;
         border-style: none;
         border-color: inherit;
         border-width: medium;
         background-color: transparent;
         background-repeat: no-repeat;
         font-family:'Times New Roman';
         cursor: pointer;
         overflow: hidden;
         outline: none;
         margin-top: 15px;
         margin-left:20px;
         color: black;
         font-size: 18px;
         text-decoration: none;
         font-weight: bold;
         letter-spacing:normal;
     }
     .auto-style:hover{
          color: #ff0000;
        text-decoration: underline;
        text-decoration-color:gray;
     }
     .auto-style:active{
         color: #ff0000;
        text-decoration: underline;
     }
        .labeltext{
            color:white;
            font-size:20px;
            text-align:center;
            vertical-align:middle;
            font-weight:bold;
            
        }
        .divexm{
             Width:324px; 
             height:394px; 
             align-self:center;
             margin-left:330px;
             background-color:#ffffff; 
             border:5px solid #ffffff; 
             padding:5px;
             vertical-align:middle;  
             box-shadow:0 0 10px 5px #aeaeae  ;
             -moz-box-shadow:0 0 10px 5px #aeaeae  ;
             -webkit-box-shadow:0 0 10px 5px #aeaeae  ;
             -o-box-shadow:0 0 10px 5px #aeaeae  ;
        }
      .imagestyle {
            margin-top:20px;
        }
        .auto-style48 {
            width: 76px;
            height: 61px;
        }
         .edittextpading{
             padding-left:5px;
        }
         
        </style>
</head>
<body class="bodyimg">
    <form id="form2" runat="server">
     <div id="wrapper">
<br/>

  <div id="menu" >
  
    <ul class="auto-style39" >
         <li></li>
 	 	 <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li ><a href="LoginPage.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels" Font-Bold="True" Text=" تسجيل الدخول " Width="99px" meta:resourcekey="LabelResource1" ></asp:Label>  </a> </li>
      <li><a class="auto-style47" ></a></li>
      <li><a ></a></li>
	  <li ><a href="AboutUs.aspx" class="auto-style40"><asp:Label runat="server" CssClass="labels" Font-Size="Medium" Font-Bold="True"  Text=" من نحن" Width="86px" meta:resourcekey="LabelResource2" ></asp:Label>  </a> </li>
      <li><a href="Default.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels"  Font-Bold="True"  Text=" الرئيسية" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

    </ul>

  </div>
  <!-- end of menu -->
   
 

 
  <div id="content">
        <div id="latest_product_gallery" class="auto-style8">   
            <div id="divexm" runat="server" class="divexm">
              <br />
                <asp:Image runat="server" src="images/profile.png" class="auto-style48" Height="79px" meta:resourcekey="ImageResource2" Width="82px" />
                <br />
                <br />
                <div>
                <table align="center">
                    <tr>
                    <td>
                 <asp:Image runat="server" src="images/username.png" height="26px" width="30px"  meta:resourcekey="ImageResource3"/>
                    </td>
                    <td>
                <asp:TextBox ID="username" runat="server" Height="26px" Width="217px"  BackColor="White" CssClass="edittextpading" meta:resourcekey="usernameResource1"></asp:TextBox>
                </td>
                 </tr>
                 </table>
                 </div>
                <br />
                <table align="center">
                    <tr>
                    <td>
                <asp:Image runat="server" src="images/password.png" height="26px" width="30px" meta:resourcekey="ImageResource4" />
                    </td>
                    <td>
               <asp:TextBox ID="pass" runat="server" Height="26px" Width="217px" TextMode="Password" BackColor="White" CssClass="edittextpading" meta:resourcekey="passResource1"></asp:TextBox>
                </td>
                 </tr>
                </table> 
               <asp:Button runat="server" Text="هل نسيت كلمة المرور؟" CssClass="auto-style"  meta:resourcekey="LabelResource4" onclick="Forget_Password" Width="236px"></asp:Button>
                <br />
                <br />
             <asp:Button runat="server" CssClass="button" Text="إرسال" OnClick="Register_Click" meta:resourcekey="ButtonResource1" />
                <br />
                <br />
                <asp:Label runat="server" ID="message" Visible="False" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <br />
                <br />
            </div>

            <div id="divfor" runat="server" class="divexm">
              <br />
                <asp:Image runat="server" src="images/profile.png" class="auto-style48" Height="79px" meta:resourcekey="ImageResource2" Width="82px" />
                <br />
                <br />
                 <asp:Label runat="server" ID="Label1" Text="الرجاء إدخال اسم المستخدم الخاص بك ليتم ارسال كلمة المرور إلى بريدك الالكتروني" Font-Bold="True" CssClass="labels" meta:resourcekey="Label1Resource1"></asp:Label>
                <br />
                <br />
                <br />
                 <table align="center">
                    <tr>
                    <td>
                 <asp:Image runat="server" src="images/username.png" height="30px" class="auto-style46" meta:resourcekey="ImageResource3"/>
                    </td>
                    <td>
                <asp:TextBox ID="fname" runat="server" Height="26px" Width="217px"  BackColor="White" CssClass="edittextpading" meta:resourcekey="usernameResource1"></asp:TextBox>                </td>
                 </tr>
                 </table>
                <br />
                <br />
                <br />
                
             <asp:Button runat="server" CssClass="button" Text="إرسال" OnClick="Forget_Click" meta:resourcekey="ButtonResource1" />
                <br />
                <br />
                <asp:Label runat="server" ID="Label2" Visible="False" ForeColor="Red" meta:resourcekey="Label2Resource1"></asp:Label>
                <br />
                <br />
            </div>

       </div>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
  </div>
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto21">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا" meta:resourcekey="LabelResource5" ></asp:Label></h1></th>
<th class="auto34" colspan="3" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto73"><asp:Label runat="server" Text=":تابعونا على"  meta:resourcekey="LabelResource6" ></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif; text-align:right;"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource7" ></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource5" /></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource6"  />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource8" ></asp:Label></a>
</td>
<td colspan="2" style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto-style27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource7" />
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource9"></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource10"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource8" /><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><a href="AboutUs.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="من نحن" meta:resourcekey="LabelResource11" ></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Default.aspx"> <asp:Label runat="server"  Font-Bold="True" CssClass="labels" Text="الرئيسية" meta:resourcekey="LabelResource12" ></asp:Label></a> </td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"> <a href="LoginPage.aspx"> <asp:Label runat="server"  Font-Bold="True" CssClass="labels" Text="تسجيل الدخول" meta:resourcekey="LabelResource14" ></asp:Label></a></td>
 <td  class="auto-style38"><uc:LanguageUser runat="server" ID="LanguageUser" /></td>
</tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style30"> <asp:Label runat="server" CssClass="label"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource16" ></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource9" /></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource17" ></asp:Label>     
</h1>

</div>

</div>
     <script type="text/javascript">
        function get_cookie(cookie_name) {
            var results = document.cookie.match('(^|;) ?' + cookie_name + '=([^;]*)(;|$)');

            if (results)
                return (unescape(results[2]));
            else
                return null;
        }
        function CheckLanguage() {
            if(get_cookie('CurrentLanguage') == "ar-OM")
                alert('Language : US-English');
            else
                alert('Language : French-Francais');
        }
    </script>
    
    
    </form>
</body>
</html>