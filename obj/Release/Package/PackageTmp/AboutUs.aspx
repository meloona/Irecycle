<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Irecycle.AboutUs" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"  %>

<%@ Register Src="~/UserControl/LanguageUserControl.ascx" TagName="LanguageUserControl" TagPrefix="uc1" %>
<%@ Register Src="~/UserControl/LanguageUser.ascx" TagName="LanguageUser" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="style.css" rel="stylesheet" type="text/css"/>

       <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style type="text/css">
       
    * {box-sizing: border-box;}
    body {font-family: Verdana, sans-serif;}
    .mySlides {display: none;}
    img {vertical-align: middle;}

    /* Slideshow container */
    .slideshow-container {
      max-width: 1000px;
      position: relative;
      margin: auto;
    }

    /* Caption text */
    .text {
      color: #f2f2f2;
      font-size: 15px;
      padding: 8px 12px;
      position: absolute;
      bottom: 8px;
      width: 100%;
      text-align: center;
      background-color:dimgray
    }

    /* Number text (1/3 etc) */
    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }

    /* The dots/bullets/indicators */
    .dot {
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbb;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
    }

    .active {
      background-color: #717171;
    }

    /* Fading animation */
    .fade {
      -webkit-animation-name: fade;
      -webkit-animation-duration: 1.5s;
      animation-name: fade;
      animation-duration: 1.5s;
    }

    @-webkit-keyframes fade {
      from {opacity: .4} 
      to {opacity: 1}
    }

    @keyframes fade {
      from {opacity: .4} 
      to {opacity: 1}
    }

    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {
      .text {font-size: 11px}
    }
              
        .auto-style8 {
            height: 99px;
            vertical-align: middle;
            width: 990px;
        }
     
        .auto-style16 {
            width: 740px;
        }
      
              
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
        .auto-style38 {
            width: 270px;
            height: 40px;
        }
      
        .auto-style40 {
            width: 90px;
            height: 38px;
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
            background-color: #149832;
        }

        .button:hover {
	        color: #ffffff;
	        background-color:#0ac821;
        }
    
           .auto-style47 {
            width: 192px;
        }
        .labeltext{
            color:white;
            font-size:15px;
            text-align:center;
            vertical-align:middle;
            font-weight:bold;
            padding:5px;
            color:black;
            height:150px;
            font-family:'Times New Roman';
            letter-spacing:normal;
        }
        .labeltext1{
            color:white;
            font-size:25px;
            text-align:center;
            vertical-align:middle;
            font-weight:bold;    
            color:#139831;
            height:auto;
            font-family:'Times New Roman';
            letter-spacing:normal;
        }
    
           #divexm{
             Width:auto; 
             height:auto; 
             align-self:center;
             vertical-align:middle;  
             background-color:#ffffff; 
             border:5px solid #ffffff; 
             padding:5px;
             box-shadow:0 0 10px 5px #aeaeae  ;
             -moz-box-shadow:0 0 10px 5px #aeaeae  ;
             -webkit-box-shadow:0 0 10px 5px #aeaeae  ;
             -o-box-shadow:0 0 10px 5px #aeaeae  ;
        }
        .bodyimg{
          background-image:url(images/home3.png)
      }
        .auto-style48 {
            height: 881px;
        }
        .ulstyle{
            list-style-type:none;
            padding:5px;
        }
          .imagestyle {
            margin-top:20px;
        }
           .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
        .auto-style75 {
            width: 886px;
        }
     
        .auto-style76 {
            width: 29px;
        }
        .auto-style77 {
            width: 86px;
        }
        .auto-style78 {
            width: 132px;
        }
        .auto-style79 {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            width: 122px;
        }
        .auto-style80 {
            width: 127px;
        }
     
        </style>
</head>
<body class="bodyimg">
    <form id="form2" runat="server">
     <div id="wrapper" class="auto-style48">
<br/>

  <div id="menu" >
  
    <ul class="auto-style39" >
        <li><a ></a></li>
        <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li ><a href="LoginPage.aspx" class="labels"><asp:Label runat="server" Font-Size="Medium" Font-Bold="True" Text=" تسجيل الدخول " Width="99px" meta:resourcekey="LabelResource1" ></asp:Label>  </a> </li>
      <li><a class="auto-style47" ></a></li>
      <li><a ></a></li>
        <li class="auto-style76"><a class="auto-style77" ></a></li>
	  <li class="auto-style80" ><a href="AboutUs.aspx" class="auto-style40" ><asp:Label runat="server" class="labels" Font-Size="Medium" Font-Bold="True"  Text=" من نحن" Width="86px" meta:resourcekey="LabelResource2" ></asp:Label>  </a> </li>
      <li class="auto-style78"><a href="Default.aspx" class="auto-style79"><asp:Label runat="server" Font-Size="Medium"  Font-Bold="True"  Text=" الرئيسية" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

    </ul>

  </div>
  <!-- end of menu -->
   
 

  <div id="content">
        <div id="latest_product_gallery" class="auto-style8">   
           
                      <div class="slideshow-container">
                 <div class="slide fade">
                  <asp:Image runat="server" src="images/slide4.png" style="width:100%; height:240px"/>
                  <br />
                  <br />
                   </div>
              <div class="slide fade">
                  <asp:Image runat="server" src="images/slide1.png" style="width:100%; height:240px"/>
                  <br />
                  <br />
                   </div>
                
                <div class="slide fade">
                 <asp:Image runat="server" src="images/slide2.png" style="width:100%; height:240px"/>
                  <br />
                  <br />
                </div>

                <div class="slide fade">
                  <asp:Image runat="server" src="images/2.png" style="width:100%; height:240px"/>
                  <br />
                  <br />
                  
                </div>   
                </div>
                

<script type="text/javascript">
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("slide");
 
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
 
  slides[slideIndex-1].style.display = "block";  
 
  setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>

            <div id="divexm">
              <h1> <asp:Label runat="server" CssClass="labeltext1" Text="رؤيتنا" meta:resourcekey="LabelResource4" ></asp:Label></h1>
                <p> &nbsp;</p>

              <asp:Label runat="server" CssClass="labeltext" Text=".رؤيتنا تكمن في ان نكون الشركة الرائدة لوضع حلول مبتكرة للحفاظ على البيئة" meta:resourcekey="LabelResource5" ></asp:Label>
                <br />
                <br />
              <h1> <asp:Label runat="server" CssClass="labeltext1" Text="رسالتنا" meta:resourcekey="LabelResource6" ></asp:Label></h1>
                    <ul class="ulstyle">
                    <li>
                <asp:Label runat="server" CssClass="labeltext" Text="تتمثل رسالتنا في العمل معاً لإرساء المفهوم التقني لإعادة تدوير المخلفات غير العضوية بزيادة الوعي عن طريق تحويلها الى عائد اقتصادي للمحافظة على البيئة العمانية"  meta:resourcekey="LabelResource7" ></asp:Label>
                    </li>
                        </ul>
                <br />
                <h1> <asp:Label runat="server" CssClass="labeltext1" Text="قيمنا" meta:resourcekey="LabelResources" ></asp:Label></h1>
                <ul class="ulstyle">
                     <li>
              <asp:Label runat="server" CssClass="labeltext" Text="الشراكة: التعاون مع المستهلك والشركات المتخصصة بالتجميع وإعادة التدوير بالإضافة الى الخدمات اللوجستية  لرفع الإنتاجية من خلال اختصار الوقت والجهد المبذول للوصول الى المواد الخام" meta:resourcekey="LabelResource10" ></asp:Label>
                    </li>
                    <li>
              <asp:Label runat="server" CssClass="labeltext" Text=" الاستدامة: تخفيض نسبة المخلفات غير العضوية المهدرة عن طريق إعادة تدويرها وتحويلها لمردود اقتصادي "  meta:resourcekey="LabelResource8" ></asp:Label>
                    </li>
                    <li>
              <asp:Label runat="server" CssClass="labeltext" Text=" الوعي: تشجيع الافراد والمؤسسات للمساهمة في اعادة تدوير المخلفات الغيرعضوية من خلال رفع الوعي البيئي"  meta:resourcekey="LabelResource9" ></asp:Label>
                    </li>
                   
                    <li>
             <asp:Label runat="server" CssClass="labeltext" Text="  المسؤولية الاجتماعية: اشراك المجتمع في عملية التجميع والتقليل من المخلفات الغير عضوية المهدرة"  meta:resourcekey="LabelResource11" ></asp:Label>
                    </li>
                    <li>
            <asp:Label runat="server" CssClass="labeltext" Text="  التميز والابتكار: طرح فكر تقني جديد للحد من اهدار المواد غير العضوية القابلة لإعادة التدوير" meta:resourcekey="LabelResource12" ></asp:Label>
                    </li>
                </ul>

              <br />
                <h1> <asp:Label runat="server" CssClass="labeltext1" Text=" أهدافنا"  meta:resourcekey="LabelResource13" ></asp:Label></h1>
                    <ul class="ulstyle">
                         <li>
                         <asp:Label runat="server" CssClass="labeltext" Text=" نحن نهدف الى وضع عماننا في مكانة مرموقة بين الدول المهتمة بإعادة التدوير والمحافظة على استدامة البيئة وذلك من خلال " meta:resourcekey="LabelResource14" ></asp:Label>
                        </li>
                        <li>             
                            <asp:Label runat="server" CssClass="labeltext" Text=" رفع الوعي الفردي بأهمية وسهولة اعادة التدوير"  meta:resourcekey="LabelResource15" ></asp:Label>
                        </li>  
                        <li>
                          <asp:Label runat="server" CssClass="labeltext" Text=" توفير حلول مستدامة لإعادة تدوير المخلفات غير العضوية "  meta:resourcekey="LabelResource16" ></asp:Label>
                        </li>
                        <li> 
                        <asp:Label runat="server" CssClass="labeltext" Text="  التقليل من نسبة المواد المهدرة القابلة لإعادة التدوير"  meta:resourcekey="LabelResource17" ></asp:Label>
                        </li>
                        <li>
                        <asp:Label runat="server" CssClass="labeltext" Text=" الحد من المخاطر البيئية الناتجة عن رمي المخلفات القابلة لإعادة التدوير"  meta:resourcekey="LabelResource18" ></asp:Label>
                        </li>
                        <li>
                            <asp:Label runat="server" CssClass="labeltext" Text="  تسليط الضوء على شركات التجميع واعادة التدوير"  meta:resourcekey="LabelResource19" ></asp:Label>
                        </li>
                        </ul>
                </div>
               </div>
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
         
  <!-- end of content -->
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto-style75">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا"  meta:resourcekey="LabelResource20" ></asp:Label></h1></th>
<th class="auto34" colspan="3" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto73"><asp:Label runat="server" Text=":تابعونا على"  meta:resourcekey="LabelResource21"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto36"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource22"></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource2" /></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource3" />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource23"></asp:Label></a>
</td>
<td colspan="2"  style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource4" />
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource24" ></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="labels" Text=" +968 91227827 " meta:resourcekey="LabelResource25" ></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource5"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto75"><a href="AboutUs.aspx"> <asp:Label runat="server" CssClass="labels"    Font-Bold="True" Text="من نحن" meta:resourcekey="LabelResource26" ></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Default.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource27"></asp:Label></a> </td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto77"><a href="LoginPage.aspx"> <asp:Label runat="server" CssClass="labels"   Font-Bold="True" Text="تسجيل الدخول" meta:resourcekey="LabelResource29" ></asp:Label></a>
</td>
<td  class="auto-style38"><uc:LanguageUser runat="server" ID="LanguageUser" /></td></tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto76"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource31"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource6" /></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource32" ></asp:Label>     
</h1>

</div>

</div>
    <script type="text/javascript">
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("slide");
 
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
 
  slides[slideIndex-1].style.display = "block";  
 
  setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>
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