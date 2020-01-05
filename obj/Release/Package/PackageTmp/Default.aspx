<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Irecycle.Home" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" EnableSessionState="True" %>

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
        .auto-style7 {
            text-align:center;
            vertical-align:middle;
        }
      .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
        .auto-style8 {
            height: 152px;
            text-align: center;
            vertical-align: middle;
            width: 990px;
        }
      
        .auto-style16 {
            width: 740px;
        }
      
        .auto-style17 {
            width: 983px;
            height: 4px;
        }
      
        .auto-style18 {
            height: 11px;
        }
      
        .auto-style21 {
            width: 843px;
        }
      
        .auto-style23 {
            width: 978px;
            text-align:center;
        
        }
              
        .auto-style27 {
            width: 330px;
            height: 35px;
        }
              
        .auto-style32 {
            width: 330px;
            height: 33px;
            font-family: Times New Roman;
            text-align:center;
            align-self:center;
            vertical-align:middle; 
        }
        .auto-style34 {
            width: 330px;
            height: 33px;
            font-family: Times New Roman;
            text-align:center;
            align-self:center;
            vertical-align:middle; 
        }
      
        .auto-style36 {
            width: 436px;
            height: 35px;
        }
        .auto-style37 {
            width: 721px;
            height: 35px;
        }
        .auto-style38 {
            width: 270px;
            height: 40px;
        }
      
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
      
        .auto-style40 {
            width: 78px;
            height: 38px;
            letter-spacing:normal;
            font-family: Times New Roman, Times, serif;
        }
          .button{
            cursor:pointer;
            color: #ffffff;
            width:121px; 
            height:38px;
            padding: 5px 0;
            color: #ffffff;
            font-size: 15px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            background-color:#21b227;
        }
        .button:hover{
            color: #ffffff;
            background-color:#2fe937;
        }
      
        .auto-style43 {
            height: 39px;
            text-align: center;
            vertical-align: middle;
            width: 1016px;
        }
      
        .auto-style47 {
            width: 192px;
        }
        .auto-style50 {
            height: 52px;
            width: 347px;
        }
      
        .auto-style51 {
            width: 83px;
        }
        .auto-style52 {
            width: 185px;        
            text-align:left;
            letter-spacing:normal;
            font-family: Times New Roman, Times, serif;
        }
      
          .imagestyle {
            margin-top:20px;
        }
      
         .divexm{
             Width:215px; 
             height:160px; 
             align-self:center;
             margin-left:50px;
             vertical-align:middle; 
             background-color:#f6f6f6;
             border:1px solid #f6f6f6;
             padding:5px;
             box-shadow:0 0 10px 5px #9ad49d;
             -moz-box-shadow:0 0 10px 5px #9ad49d;
             -webkit-box-shadow:0 0 10px 5px #9ad49d;
             -o-box-shadow:0 0 10px 5px #9ad49d;
        }
      
        .myslidesimag{
            width:140px;
            height:140px;
        }
        .auto-style66 {
            width: 311px;
        }
        .auto-style71 {
            width: 347px;
            height: 190px;
        }
        .auto-style72 {
            width: 347px;
            height: 25px;
            font-family: Times New Roman;
            text-align: center;
            align-self: center;
            vertical-align: middle;
        }
        .auto-style73 {
            width: 307px;
            height: 34px;
        }
        .auto-style74 {
            width: 436px;
            height: 40px;
        }
        .auto-style75 {
            width: 721px;
            height: 40px;
        }
        .auto-style76 {
            width: 436px;
            height: 42px;
        }
        .auto-style77 {
            width: 241px;
            height: 40px;
        }.imglogo {
             width:320px;
             height:230px;
        }
        .auto-style80 {
            width: 347px;
            height: 23px;
            font-family: Times New Roman;
            text-align: center;
            align-self: center;
            vertical-align: middle;
        }
        .auto-style81 {
            height: 23px;
            font-family: Times New Roman, Times, serif;
            font-size: 12px;
            color: black;
            text-decoration: solid;
            width: 361px;
        }
        .auto-style82 {
            height: 25px;
            font-family: Times New Roman, Times, serif;
            font-size: 12px;
            color: black;
            text-decoration: solid;
            width: 361px;
        }
        .auto-style92 {
            width: 345px;
            height: 190px;
        }
        .auto-style93 {
            height: 23px;
            font-family: Times New Roman, Times, serif;
            font-size: 12px;
            color: black;
            text-decoration: solid;
            width: 345px;
        }
        .auto-style94 {
            height: 25px;
            font-family: Times New Roman, Times, serif;
            font-size: 12px;
            color: black;
            text-decoration: solid;
            width: 345px;
        }
        .auto-style95 {
            height: 52px;
            width: 345px;
        }
        .auto-style96 {
            width: 361px;
            height: 190px;
        }
        .auto-style97 {
            height: 52px;
            width: 361px;
        }
        .auto-style98 {
            width: 103px;
            height: 38px;
            letter-spacing: normal;
            font-family: Times New Roman, Times, serif;
        }
        .auto-style99 {
            width: 126px;
        }
        .auto-style100 {
            width: 127px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="wrapper">
<br/>

  <div id="menu" >
 
 	<ul class="auto-style39" >
          <li></li>
 	 <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li class="auto-style52" ><a href="LoginPage.aspx"><asp:Label runat="server" Font-Size="Medium"  CssClass="labels" Text=" تسجيل الدخول " Width="87px" meta:resourcekey="LabelResource1"></asp:Label>  </a> </li>
      <li class="auto-style51"><a ></a></li>
      <li><a ></a></li>
	  <li class="auto-style100" ><a href="AboutUs.aspx" class="auto-style40"><asp:Label runat="server" CssClass="labels" Font-Size="Medium"  Text=" من نحن" meta:resourcekey="LabelResource2" Width="82px"></asp:Label>  </a> </li>
      <li class="auto-style99"><a href="Default.aspx" class="auto-style98"><asp:Label runat="server" CssClass="labels" Font-Size="Medium"    Text=" الرئيسية" meta:resourcekey="LabelResource3" Width="56px"></asp:Label>  </a> </li>

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
 
  setTimeout(showSlides, 5000); 
}
</script>
    </div>
	 <br/>
	 <br/>
	 <br/>
	 <br/>
	 <br/>
      <h2 style="font-size: 25px;font-weight: bold;color: black; letter-spacing:normal;" class="auto-style43"><asp:Label runat="server" Text="منصة إلكترونية تجعل لمخلفاتك قيمة مادية" meta:resourcekey="LabelResource21"></asp:Label></h2>

      <asp:Image runat="server" src="images/logos.JPG" alt="" CssClass="imglogo"  meta:resourcekey="ImageResource3"  />
		
     <h2 style="font-size:20px; font-weight: bold; color: black; letter-spacing:normal;" class="auto-style18"><asp:Label runat="server" Text=" لنخلق معا بيئة عمانية نظيفة من خلال إدارة المخلفات الغير عضوية بشكل سليم " meta:resourcekey="Stringnames"></asp:Label></h2>
	
	 <h2 style="font-size: 18px; font-weight: bold; color: black; letter-spacing:normal;" class="auto-style17"><asp:Label runat="server" Text=" بادر معنا " meta:resourcekey="BaderResource"></asp:Label></h2>	

	<asp:Image runat="server" src="images/arrow-down.png" alt="" width="30px" height="32px" class="auto-style7" meta:resourcekey="ImageResource3"/>
	    <br />
	<br/>
      <table align="center" class="auto-style23">
        <tr>
        <th class="auto-style92">
              <div class="divexm">
                <br />
             <asp:Image runat="server" src="images/shipped.png" alt="" width="110px" height="87px" class="auto-style7" meta:resourcekey="ImageResource6"/>
                <br />
                <br />
                <asp:Label runat="server" CssClass="labels" Font-Size="Large" ForeColor="#21b227" Font-Bold="True" Text="الشاحنات" meta:resourcekey="imgstring2" ></asp:Label>
                <br />
            </div> 
        </th>
        <th class="auto-style96" >
             <div class="divexm">
                <br />
             <asp:Image runat="server" src="images/customer.png" alt="" width="110px" height="87px" class="auto-style7" meta:resourcekey="ImageResource6"/>
                <br />
                <br />
                <asp:Label runat="server" CssClass="labels" Font-Size="Large" ForeColor="#21b227" Font-Bold="True" Text="مستهلك" meta:resourcekey="imgstring1" ></asp:Label>
                <br />
            </div> 
            </th>
        <th class="auto-style71" >
            <div class="divexm">
                <br />
             <asp:Image runat="server" src="images/factory_home.png" alt="" width="105px" height="87px" class="auto-style7" meta:resourcekey="ImageResource6"/>
                <br />
                <br />
                <asp:Label runat="server" CssClass="labels" Font-Size="Large" ForeColor="#21b227" Font-Bold="True" Text="شركة إعادة التدوير" meta:resourcekey="imgstring3" ></asp:Label>
                <br />
            </div> 
        </th>
        </tr>
          <tr>
              <td class="auto-style93" style="font-size:13px;" ><asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="هل تمتلك شاحنة نقل وترغب في زيادة دخلك؟" meta:resourcekey="LabelResource4"></asp:Label></td>
              <td class="auto-style81" style="font-size:13px;" > <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="هل لديك مخلفات بلاستيكية أو ورقية؟" meta:resourcekey="LabelResource5"></asp:Label></td>
              <td class="auto-style80" style="font-size:13px;" > <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="هل تمتلك شركة لتجميع أو إعادة التدوير؟" meta:resourcekey="LabelResource6"></asp:Label></td>
          </tr>
            <tr>
              <td  class="auto-style94" style="font-size:13px;" ><asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="ستكون أنت حلقة وصل بين المستهلك وشركة التجميع أو إعادة التدوير" meta:resourcekey="LabelResource7"></asp:Label><br />
                </td>
              <td class="auto-style82" style="font-size:13px;" > <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="بإمكانك الآن تحويل مخلفاتك إلى عائد مادي بكل سهولة من مكانك" meta:resourcekey="LabelResource8"></asp:Label><br />
                </td>
              <td class="auto-style72" style="font-size:13px;" > <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="يمكنك الآن توسيع قاعدة بياناتك والوصول لعدد أكبر من المستهلكين" meta:resourcekey="LabelResource9"></asp:Label><br />
                </td>
          </tr>
            <tr>
             <td class="auto-style95"><asp:Button runat="server" CssClass="button" Text="سجل معنا"  class="auto-style7" OnClick="trucks_register" meta:resourcekey="ButtonResource1"/></td>
             <td class="auto-style97"><asp:Button runat="server" CssClass="button" Text="بادر معنا" class="auto-style7" OnClick="estab_register" meta:resourcekey="ButtonResource2"/></td>
             <td id="submit_btn" class="auto-style50" ><asp:Button  runat="server"  Text="سجل معنا"  CssClass="button" class="auto-style7" OnClick="company_register" meta:resourcekey="ButtonResource3"/></td>
          </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
          </table>
  <br />
  <br />
  </div>
         
         <br />
         <br />
  <!-- end of content -->
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto-style21">
<tr>
<th colspan="2" class="auto-style32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;text-align:right;" class="auto-style66"><asp:Label runat="server" Text=":تواصل معنا " meta:resourcekey="ContactUs"></asp:Label></h1></th>
<th class="auto-style34" colspan="3" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto-style73"><asp:Label runat="server" Text=":تابعونا على" meta:resourcekey="FollowUs"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style36"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource10"></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="18px" height="16px" align="center" meta:resourcekey="ImageResource7"/></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto-style37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource8" Height="25px" Width="30px" />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource11"></asp:Label></a>
</td>
<td colspan="2"  style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto-style27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource9"/>
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource12"></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource13"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource10"/><br /></td>
<td  style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style75"><a href="AboutUs.aspx"> <asp:Label runat="server"   Font-Bold="True" CssClass="labels" Text="من نحن" meta:resourcekey="LabelResource14"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Default.aspx"> <asp:Label CssClass="labels" runat="server"  Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource15"></asp:Label></a> </td>
<td  style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style77"> <a href="LoginPage.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="تسجيل الدخول" meta:resourcekey="LabelResource17"></asp:Label></a></td>
  <td  class="auto-style38"><uc:LanguageUser runat="server" ID="LanguageUser" /></td>
</tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style76"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource19"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="16px" height="20px" align="center" meta:resourcekey="ImageResource11"/></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource20"></asp:Label>     
</h1>

</div>
  <!-- end of footer -->

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
