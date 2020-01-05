<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="Irecycle.AdminHome" Async="true" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"  %>

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
      
        .auto-style8 {
            height: 39px;
            text-align: center;
            vertical-align: middle;
            width: 990px;
        }
      
        .auto-style16 {
            width: 740px;
        }
      
        .auto-style18 {
            height: 11px;
        }
      
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
      
          .button{
            cursor:pointer;
            vertical-align:middle;
            color: #ffffff; 
            width:203px; 
            height:35px;
            padding: 5px 0;
            color: #ffffff;
            font-size: 20px;
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
              
        .auto-style51 {
            width: 83px;
        }
        .auto-style52 {
            width: 185px;        
            text-align:left;
            
        }
      
          .imagestyle {
            margin-top:20px;
        }
        .bodyimg{
          background:#ebeff2 url(images/home2.png) repeat-x top;
      }
          .stylebu{
            margin-left:30px;
           text-align:left;
        }
        .radioButtonList label{
            display:inline;
            font-weight:bold;
            font-size:15px;
        }
        .edittextpading{
             padding-left:5px;
            
        }
        .auto-style67 {
            height: 27px;
            text-align: center;
            vertical-align: middle;
        }
          .labeltext{
            color:white;
            font-size:20px;
            text-align:center;
            vertical-align:middle;
            font-weight:bold;
            
        }
           .divexm{
             Width:524px; 
             height:159px; 
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
           .ignor {
                width: 100px;
                height: 36px;
                padding: 5px 0;
                color: #ffffff;
                font-size: 15px;
                text-align: center;
                text-decoration: none;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
                background-color: #00bc3f;
            }
  .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
    .ignor:hover {
        color: #ffffff;
        background-color: #01d849;
    }
        .auto-style69 {
            width: 404px;
            height: 46px;
        }
        .auto-style70 {
            width: 848px;
        }
        .auto-style51 {
            width: 19px;
        }
        .auto-style71 {
            width: 647px;
            height: 35px;
        }
        .auto-style72 {
            width: 647px;
            height: 40px;
        }
         .auto-style38 {
            width: 270px;
            height: 40px;
            margin-right:40px;
        }
        .auto-style73 {
            width: 111px;
        }
        .auto-style74 {
            width: 41px;
        }
        .auto-style75 {
            width: 101px;
        }
        .auto-style76 {
            width: 336px;
            height: 34px;
        }
        </style>
</head>
<body class="bodyimg">
    <form id="form1" runat="server">
     <div id="wrapper">
<br/>

  <div id="menu" >
 
 	<ul class="auto-style39" >
   <li class="auto-style75"><a ></a></li>
 	 <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li class="auto-style52" ><a href="LoginPage.aspx"><asp:Label runat="server" CssClass="labels"  Font-Size="Medium" Font-Bold="True" Text=" تسجيل الخروج " Width="127px" meta:resourcekey="LabelResource1"></asp:Label>  </a> </li>
      <li class="auto-style74"><a ></a></li>
     <li class="auto-style51"><a ></a></li>
	  <li class="auto-style73"><a ></a></li>
      <li><a href="AdminDefault.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels"  Font-Bold="True"  Text=" الرئيسية" Width="56px" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

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
    </div>
	 <br/>
	 <br/>
	 <br/>
	 <br/>
      <h2 style="font-size: 25px; font-weight: bold; color:black; letter-spacing:normal;" class="auto-style43"><asp:Label runat="server" Text="منصة إلكترونية تجعل لمخلفاتك قيمة مادية" meta:resourcekey="LabelResource4" ></asp:Label></h2>
      <asp:Image runat="server" src="images/logos.JPG" alt="" width="320px" height="230px" class="auto-style7" meta:resourcekey="ImageResource3" />
		
     <h2 style="font-size: 18px; font-weight: bold; color: black; letter-spacing:normal;" class="auto-style18"><asp:Label runat="server" Text=" لنخلق معا بيئة عمانية نظيفة من خلال إدارة المخلفات الغير عضوية بشكل سليم " meta:resourcekey="LabelResource5" ></asp:Label></h2>
	 <br />
      <h2 style="font-size: 25px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style67"><asp:Label runat="server"  Font-Bold="True" Text=" طلبات  " meta:resourcekey="LabelResource6"></asp:Label></h2>
      <br /> 
       <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" EmptyDataText="لا توجد طلبات" BorderWidth="1px" CellPadding="2" ForeColor="Black" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"   GridLines="None" Width="1090px" meta:resourcekey="GridView2Resource1">
            <AlternatingRowStyle BackColor="White"  Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <EditRowStyle BackColor="#7C6F57"  Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="Small" />
         <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White"  Font-Size="Small" Height="40px"/>
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" Font-Size="Small"/>
         <RowStyle BackColor="#E3EAEB" Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" /> 
           <Columns>
          <asp:BoundField HeaderText="الحالة" AccessibleHeaderText="الحالة" DataField="الحالة" meta:resourcekey="BoundFieldResource9" /> 
         <asp:BoundField HeaderText="التاريخ" AccessibleHeaderText="التاريخ" DataField="التاريخ" meta:resourcekey="BoundFieldResource10"  /> 
         <asp:BoundField HeaderText="وقت اتمام الطلب" AccessibleHeaderText="وقت اتمام الطلب" DataField="وقت اتمام الطلب" meta:resourcekey="BoundFieldResource11"  /> 
         <asp:BoundField HeaderText="شاحنات" AccessibleHeaderText="شاحنات" DataField="شاحنات" meta:resourcekey="BoundFieldResource12"  /> 
         <asp:BoundField HeaderText="وقت استلام الطلب" AccessibleHeaderText="وقت استلام الطلب" DataField="وقت استلام الطلب" meta:resourcekey="BoundFieldResource13"  />
         <asp:BoundField HeaderText="شركة إعادة التدوير" AccessibleHeaderText="شركة إعادة التدوير" DataField="شركة إعادة التدوير" meta:resourcekey="BoundFieldResource14"  />
         <asp:BoundField HeaderText="المؤسسة" AccessibleHeaderText="المؤسسة" DataField="المؤسسة" meta:resourcekey="BoundFieldResource15"  />
        <asp:BoundField HeaderText="رقم الطلب" AccessibleHeaderText="رقم الطلب" DataField="رقم الطلب" meta:resourcekey="BoundFieldResource16"/>
           </Columns>
        </asp:GridView>
      <br />
      <br />
       <hr style="background-color:white; color:white; border-color:white; height:3px; "/>
           <h2 style="font-size: 25px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style67"><asp:Label runat="server"  Font-Bold="True" Text=" طلبات التسجيل  " meta:resourcekey="LabelResource7"></asp:Label></h2>
      <br /> 
          
      <asp:GridView runat="server" ID="GridView1" EmptyDataText="لا توجد طلبات تسجيل" BorderColor="Tan" CssClass="label" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="LightGoldenrodYellow" ViewStateMode="Enabled" BorderWidth="1px" ForeColor="Black" CellPadding="4"  GridLines="None" Height="110px" Width="1090px" meta:resourcekey="GridView1Resource1">
         <AlternatingRowStyle BackColor="White"  Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <EditRowStyle BackColor="#7C6F57"  Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="Small" />
         <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White"  Font-Size="Small" Height="40px"/>
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" Font-Size="Small"/>
         <RowStyle BackColor="#E3EAEB" Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
         <Columns>     
          <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
             <ItemTemplate>
                 <asp:Button  runat="server"  Text="تم " CommandName="ok" CommandArgument="<%# Container.DataItemIndex %>" Visible='<%# DataBinder.Eval(Container.DataItem,"الحالة").ToString()=="قيد المراجعة" %>' CssClass="ignor" meta:resourcekey="ButtonResource1"  />
             </ItemTemplate>
         </asp:TemplateField>
         <asp:BoundField HeaderText="حالة التسجيل" AccessibleHeaderText="الحالة" DataField="الحالة" meta:resourcekey="BoundFieldResource1"  /> 
         <asp:BoundField HeaderText="الموقع" AccessibleHeaderText="الموقع" DataField="الموقع" meta:resourcekey="BoundFieldResource2"  /> 
         <asp:BoundField HeaderText="البريد الالكتروني" AccessibleHeaderText="البريد" DataField="البريد" meta:resourcekey="BoundFieldResource3"  /> 
         <asp:BoundField HeaderText="الهاتف" AccessibleHeaderText="الهاتف" DataField="الهاتف" meta:resourcekey="BoundFieldResource4"  /> 
         <asp:BoundField HeaderText="نوع الشاحنة" AccessibleHeaderText="نوع" DataField="نوع" meta:resourcekey="BoundFieldResource5"  />
         <asp:BoundField HeaderText="اسم الشركة/ مالك الشاحنة" AccessibleHeaderText="اسم" DataField="اسم" meta:resourcekey="BoundFieldResource6"  />
         <asp:BoundField HeaderText="تاريخ التسجيل" AccessibleHeaderText="تاريخ" DataField="تاريخ" meta:resourcekey="BoundFieldResource7" />
        <asp:BoundField HeaderText="رقم التسجيل" AccessibleHeaderText="رقم" DataField="رقم" meta:resourcekey="BoundFieldResource8"/>
 
     </Columns>

        </asp:GridView>
      <br />
        <hr style="background-color:white; color:white; border-color:white; height:3px; "/>
           <h2 style="font-size: 25px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style67"><asp:Label runat="server"  Font-Bold="True" Text=" النقاط المجمعة  "  meta:resourcekey="stringlable"></asp:Label></h2>
       <br /> 
       <asp:GridView runat="server" ID="GridView3" EmptyDataText="لا توجد بيانات" CssClass="label" BorderColor="Tan" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" BorderWidth="1px" CellPadding="2" ForeColor="Black" OnRowCommand="GridView1_RowCommand" BackColor="LightGoldenrodYellow" ViewStateMode="Enabled"  GridLines="None" Height="110px" Width="1090px" meta:resourcekey="GridView3Resource1">
         <AlternatingRowStyle BackColor="White"  Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <EditRowStyle BackColor="#7C6F57"  Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="Small" />
         <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White"  Font-Size="Small" Height="40px"/>
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" Font-Size="Small"/>
         <RowStyle BackColor="#E3EAEB" Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
         <Columns>      
         <asp:BoundField HeaderText="قيمة النقاط" AccessibleHeaderText="قيمة" DataField="قيمة" meta:resourcekey="BoundFieldResource17"/>
         <asp:BoundField HeaderText="معادن أخرى" AccessibleHeaderText="أخرى" DataField="أخرى" meta:resourcekey="BoundFieldResource18"/>
         <asp:BoundField HeaderText="بلاستيك" AccessibleHeaderText="بلاستيك" DataField="بلاستيك" meta:resourcekey="BoundFieldResource19" /> 
         <asp:BoundField HeaderText="كرتون" AccessibleHeaderText="كرتون" DataField="كرتون"  meta:resourcekey="BoundFieldResource20"/> 
         <asp:BoundField HeaderText="حديد" AccessibleHeaderText="حديد" DataField="حديد" meta:resourcekey="BoundFieldResource21" />
         <asp:BoundField HeaderText="زجاج" AccessibleHeaderText="زجاج" DataField="زجاج" meta:resourcekey="BoundFieldResource22"/>
         <asp:BoundField HeaderText="ألمونيوم" AccessibleHeaderText="ألمونيوم" DataField="ألمونيوم" meta:resourcekey="BoundFieldResource23" />
         <asp:BoundField HeaderText="إطارات" AccessibleHeaderText="إطارات" DataField="إطارات" meta:resourcekey="BoundFieldResource24" />
         <asp:BoundField HeaderText="ورق" AccessibleHeaderText="ورق" DataField="ورق" meta:resourcekey="BoundFieldResource25" /> 
         <asp:BoundField HeaderText="اسم المستخدم" AccessibleHeaderText="اسم" DataField="اسم" meta:resourcekey="BoundFieldResource26"/>
     </Columns>

        </asp:GridView>
        <br />
        <br />
        <br />
  </div>
        
     
     
  <!-- end of content -->
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto-style70">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;text-align:right;" class="auto66"><asp:Label CssClass="labels" runat="server" Text=":تواصل معنا " meta:resourcekey="LabelResource8"></asp:Label></h1></th>
<th class="auto34" colspan="2"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto-style76"><asp:Label CssClass="labels" runat="server" Text=":تابعونا على" meta:resourcekey="LabelResource9"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto36"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource10" ></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource4" /></td>
<td rowspan="3" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto-style71"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource5"  />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource11"></asp:Label></a>
</td>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource6" />
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource12" ></asp:Label></a>
</td>
</tr>

<tr>
<td  style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="labels" Text=" +968 91227827 " meta:resourcekey="phone"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource7"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style72"> <a href="Default.aspx"> <asp:Label runat="server"  Font-Bold="True" CssClass="labels" Text="تسجيل الخروج" meta:resourcekey="LabelResource23"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="AdminDefault.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource21"></asp:Label></a> </td>
<td class="auto-style38"> <uc:LanguageUser runat="server" ID="LanguageUser" /></td>
</tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style69"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource19"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource8" /></td>
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