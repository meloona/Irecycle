<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog2.aspx.cs" Inherits="Irecycle.Dialog2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"  %>

<%@ Register Src="~/UserControl/LanguageUserControl.ascx" TagName="LanguageUserControl" TagPrefix="uc1" %>
<%@ Register Src="~/UserControl/LanguageUser.ascx" TagName="LanguageUser" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
      
        .auto-style16 {
            width: 740px;
        }
      
        .auto-style30 {
            width: 411px;
            height: 38px;
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
          background:#ebeff2 url(images/home1.png);
      }
        .auto-style46 {
            width: 34px;
        }
        .button {
           cursor:pointer;
            width: 273px;
            height: 39px;
            padding: 5px 0;
            color: #ffffff;
            font-size: 18px;
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
    
        .auto-style47 {
            
            width: 192px;
        }
        .labeltext{
            color:white;
            font-size:18px;
            text-align:center;
            vertical-align:middle;
            font-weight:bold;
            letter-spacing:normal;
        }
        #divexm{
             Width:524px; 
             height:182px; 
             align-self:center;
             margin-left:240px;
             vertical-align:middle;  
             background-color:#aeaeae; 
             border:5px solid #ffffff; 
             padding:5px;
             box-shadow:0 0 10px 5px #aeaeae  ;
             -moz-box-shadow:0 0 10px 5px #aeaeae  ;
             -webkit-box-shadow:0 0 10px 5px #aeaeae  ;
             -o-box-shadow:0 0 10px 5px #aeaeae  ;
        }
      .imagestyle {
            margin-top:20px;
        }
       .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
        .auto-style49 {
            width: 411px;
        }
        .auto-style50 {
            width: 411px;
            height: 40px;
        }
        .auto-style51 {
            width: 132px;
        }
        .auto-style52 {
            width: 62px;
        }
        .auto-style53 {
            width: 117px;
            height: 68px;
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
      <li ><a href="LoginPage.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels" Font-Bold="True" Text=" تسجيل الدخول " Width="99px" meta:resourcekey="LabelResource1"></asp:Label>  </a> </li>
      <li><a class="auto-style47" ></a></li>
      <li><a ></a></li>
	  <li class="auto-style51" ><a href="AboutUs.aspx" class="auto-style40"><asp:Label runat="server" CssClass="label"  Font-Size="Medium" Font-Bold="True"  Text=" من نحن" Width="86px" meta:resourcekey="LabelResource2" Height="22px"></asp:Label>  </a> </li>
      <li class="auto-style53"><a href="Default.aspx" class="auto-style52"><asp:Label runat="server" Font-Size="Medium" CssClass="labels" Font-Bold="True"  Text=" الرئيسية" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

    </ul>

  </div>
  <!-- end of menu -->
   
 

 
  <div id="content">
      <br />
      <br />
        <div id="latest_product_gallery" class="auto-style8">   
            <div id="divexm">
              <br />
                <h1>
                <asp:Label runat="server" CssClass="labeltext" Text="  شكرا لك على مساهمتك في الحفاظ على بيئتنا العمانية" meta:resourcekey="LabelResource4"></asp:Label><br /></h1>
                <br />
                <asp:Image runat="server" src="images/ic_check.png" Width="60px" height="60px" class="auto-style46" meta:resourcekey="ImageResource1"/>
            </div>
             
            <br />
            <br />
          <asp:Button  runat="server" Text="العودة إلى الصفحة الرئيسية" OnClick="home_Click" CssClass="button" meta:resourcekey="ButtonResource1"/>
      </div>
      <br />
      <br />
      <br />

       
      
  </div>
     
  <!-- end of content -->
         <br />
         <br />
         <br />
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto21">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا"  meta:resourcekey="LabelResource10"></asp:Label></h1></th>
<th class="auto34" colspan="3" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto73"><asp:Label runat="server" Text=":تابعونا على"  meta:resourcekey="LabelResource11"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style49"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource5"></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource2"/></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td   style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource3" />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource6"></asp:Label></a>
</td>
<td colspan="2" style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource4"/>
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource7"></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style50"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource8"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource5"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto75">  <a href="AboutUs.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="من نحن" meta:resourcekey="LabelResource9"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Default.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource12"></asp:Label></a> </td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto77">    <a href="LoginPage.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="تسجيل الدخول" meta:resourcekey="LabelResource15"></asp:Label></a> 
</td>
<td  class="auto-style38"><uc:LanguageUser runat="server" ID="LanguageUser" /></td></tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style30"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource14"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource6"/></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource17"></asp:Label>     
</h1>

</div>

</div>
    </form>
</body>
</html>