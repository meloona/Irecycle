<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TruckDefault.aspx.cs" Inherits="Irecycle.TruckHome" Async="true" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" EnableSessionState="True" %>

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
       .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
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
      
        .auto-style27 {
            width: 330px;
        }
              
        .auto-style30 {
            width: 301px;
            height: 37px;
        }
              
         .bodyimg{
          background:#ebeff2 url(images/home2.png) repeat-x top;
      }
      
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
      
          .auto-style42 {
            text-align:left;
            width: 3px;
        }
        .button{
            cursor:pointer;
            color: #ffffff;
            width:121px; 
            height:38px;
            padding: 5px 0;
            color: #ffffff;
            font-size: 18px;
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
        
.accept {
    width: 100px;
    height: 39px;
    padding: 5px 0;
    color: #ffffff;
    font-size: 18px;
    text-align: center;
    text-decoration: none;
    font-weight: bold;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #c61c1c;
}

    .accept:hover {
        color: #ffffff;
        background-color: #f00404;
    }
.ignor {
    width: 100px;
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
      .label1{
          align-items:center;
          vertical-align:middle;
          align-self:center;
      }
        .auto-style43 {
            height: 134px;
            width: 832px;
        }
        .auto-style44 {
            height: 40px;
        }
        .auto-style45 {
            height: 35px;
        }
        .tablecell{
           background-color:green;
           color:white;
           font-size:large;
           height:50px;
        }
        .auto-style47 {
            width: 192px;
        }
          .edittextpading{
             padding-left:5px;
        }
        .stylebu{
            margin-left:30px;
           text-align:left;
        }
         .imagestyle {
            margin-top:20px;
        }
        .auto-style48 {
            height: 40px;
            width: 479px;
        }
        .auto-style49 {
            height: 35px;
            width: 479px;
        }.auto-style51 {
            width: 101px;
        }
        .auto-style52 {
            width: 20px;
        }
        .auto-style53 {
            width: 129px;
        }
        .auto-style54 {
            width: 106px;
        }
        .auto-style55 {
            width: 97px;
        }
        .auto-style56 {
            width: 339px;
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
 	<li class="auto-style51"><a ></a></li>
 	 <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li ><a href="LoginPage.aspx"><asp:Label runat="server" CssClass="labels" Font-Size="Medium" Font-Bold="True" Text=" تسجيل الخروج " Width="127px" meta:resourcekey="LabelResource1"></asp:Label>  </a> </li>
      <li class="auto-style53"><a class="auto-style42" ></a></li>
      <li class="auto-style52"><a class="auto-style55" ></a></li>
      <li class="auto-style54"><a ></a></li>
      <li><a href="TruckDefault.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels" Font-Bold="True"  Text=" الرئيسية" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

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
        <h2 style="font-size: 25px;font-weight: bold;color: black; letter-spacing:normal;" class="auto-style7"> <asp:Label runat="server" Text="منصة إلكترونية تجعل لمخلفاتك قيمة مادية" meta:resourcekey="LabelResource4" ></asp:Label></h2>

      <asp:Image runat="server" src="images/logos.JPG" alt=""  width="315px" height="220px" class="auto-style7" meta:resourcekey="ImageResource3" ID="Image1" />
		
     <h2 style="font-size: 20px;font-weight: bold;color: black; letter-spacing:normal;" class="auto-style18"> <asp:Label runat="server" Text=" لنخلق معا بيئة عمانية نظيفة من خلال إدارة المخلفات الغير عضوية بشكل سليم " meta:resourcekey="LabelResource5"></asp:Label> </h2>
         <br />

        <h2 style="font-size: 25px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style7"><asp:Label runat="server" Text="  الصفحة الشخصية للشاحنات " meta:resourcekey="LabelResource6"></asp:Label></h2>
     <div class="stylebu"><asp:Button ID="bu1" CssClass="button" runat="server" Font-Bold="True" Font-Size="Medium" Width="115px" Text="تعديل" OnClick="Update_Details" meta:resourcekey="bu1Resource1" ></asp:Button>
         <asp:Button ID="bu2" CssClass="button" runat="server" Font-Bold="True" Font-Size="Medium" Width="115px" Text="تحديث البيانات " OnClick="Updat_Details" Visible="False" meta:resourcekey="bu2Resource1"></asp:Button>
     </div>
      <table  align="center" style="align-content:center; align-self:center;" class="auto-style43">
 
         <tr>
                 <td style="text-align:center" class="auto-style48">
             <asp:Label ID="emails"  runat="server" Height="26px" Width="193px" Text="Email" CssClass="label" meta:resourcekey="emailsResource1"></asp:Label>
                     <asp:TextBox ID="emails1"  runat="server" Height="26px" Width="193px" Text="Email" CssClass="edittextpading" Visible="False" meta:resourcekey="emails1Resource1"></asp:TextBox>
             <asp:Label runat="server" Text="   :نوع الشاحنة" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="label" meta:resourcekey="LabelResource7"></asp:Label>
              </td>
             <td style="text-align:center" class="auto-style44">
                             <asp:Label ID="name" runat="server" Height="26px" Width="217px" Text="name" CssClass="label" meta:resourcekey="nameResource1" ></asp:Label> 
                 <asp:TextBox ID="name1" runat="server" Height="26px" Width="217px" Text="name" CssClass="edittextpading" Visible="False" meta:resourcekey="name1Resource1" ></asp:TextBox>
             <asp:Label runat="server" Text=" :اسم المالك" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="label" meta:resourcekey="LabelResource8"></asp:Label>               
                 </td>
         </tr>

         <tr> 
              <td style="text-align:center" class="auto-style49">
             <asp:Label ID="addr" runat="server" Height="26px" Width="217px" Text="address" CssClass="label" meta:resourcekey="addrResource1"></asp:Label>
                  <asp:TextBox ID="addr1" runat="server" Height="26px" Width="217px" Text="address" CssClass="edittextpading" Visible="False" meta:resourcekey="addr1Resource1"></asp:TextBox>
             <asp:Label runat="server" Text="    :الموقع" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="label" meta:resourcekey="LabelResource9"></asp:Label>       
              </td>  
        
             <td style="text-align:center" class="auto-style45">
             <asp:Label ID="phon" runat="server" Height="26px" Width="217px" Text="phone" CssClass="label" meta:resourcekey="phonResource1" ></asp:Label>
                 <asp:TextBox ID="phon1" runat="server" Height="26px" Width="217px" Text="phone" CssClass="edittextpading" Visible="False" meta:resourcekey="phon1Resource1"></asp:TextBox>
             <asp:Label runat="server" Text="    :الهاتف" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="label" meta:resourcekey="LabelResource10"></asp:Label>
              </td>
                    
        
         </tr>
          <tr>
                <td class="auto-style48">
                   <asp:TextBox ID="user" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="userResource1"></asp:TextBox>
                   <asp:TextBox ID="pass" runat="server" Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="passResource1"  ></asp:TextBox>
                   <asp:TextBox ID="repass" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="repassResource1"></asp:TextBox>
                   <asp:TextBox ID="state" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="stateResource1"></asp:TextBox>
                   <asp:TextBox ID="rtype" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="rtypeResource1"></asp:TextBox>
                     <asp:TextBox ID="date" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="dateResource1"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server"  Height="26px" Width="217px" CssClass="label"  ForeColor="GrayText" Visible="False" meta:resourcekey="Label1Resource1"></asp:Label>
                    <asp:Label ID="Label2" runat="server"  Height="26px" Width="217px" CssClass="label"  ForeColor="GrayText" Visible="False" meta:resourcekey="Label2Resource1"></asp:Label>
              </td>
          </tr>
     </table>
    <br />
      <hr style="background-color:white; color:white; border-color:white; height:3px; "/>
       <h2 style="font-size: 25px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style7"><asp:Label runat="server" Text="  قائمة الطلبات الجديدة   " meta:resourcekey="LabelResource11"></asp:Label></h2>
      <br />
      <asp:GridView runat="server" ID="gridViwe1" EmptyDataText="لا توجد طلبات" ShowHeaderWhenEmpty="True" BackColor="LightGoldenrodYellow" OnRowCommand="GridView1_RowCommand"  AutoGenerateColumns="False" ViewStateMode="Enabled"  CellPadding="4" BorderWidth="1px" ForeColor="Black" GridLines="None" Height="110px" Width="1100px" meta:resourcekey="gridViwe1Resource1">
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
                 <asp:Button ID="accept"  runat="server"  Text="قبول "  CommandName="accept" CommandArgument="<%# Container.DataItemIndex %>" CssClass="accept" Visible='<%# DataBinder.Eval(Container.DataItem,"الحالة").ToString()=="قيد التنفيذ" %>' meta:resourcekey="acceptResource1" />
               <br /><asp:Button ID="ok"    runat="server"  Text="تم" CommandName="ok" CommandArgument="<%# Container.DataItemIndex %>"  CssClass="ignor" Visible='<%# DataBinder.Eval(Container.DataItem,"الحالة").ToString()=="قيد الاستلام" %>' meta:resourcekey="okResource1"/>
                  <br /><asp:Button ID="ignor"    runat="server"  Text="رفض"  CommandName="ignor" CommandArgument="<%# Container.DataItemIndex %>"  CssClass="ignor" Visible='<%# DataBinder.Eval(Container.DataItem,"الحالة").ToString()=="قيد التنفيذ" %>' meta:resourcekey="ignorResource1" />
            </ItemTemplate>     
         </asp:TemplateField>       
          <asp:BoundField HeaderText="الحالة" AccessibleHeaderText="الحالة" DataField="الحالة" meta:resourcekey="BoundFieldResource1"  />  
         <asp:BoundField HeaderText="الهاتف" AccessibleHeaderText="الهاتف الشركة" DataField="الهاتف الشركة" meta:resourcekey="BoundFieldResource2"  />
         <asp:BoundField HeaderText="الموقع " AccessibleHeaderText="موقع الشركة" DataField="موقع الشركة" meta:resourcekey="BoundFieldResource3"  />
           <asp:BoundField HeaderText="شركة إعادة التدوير"  AccessibleHeaderText="شركة إعادة التدوير" DataField="شركة إعادة التدوير" meta:resourcekey="BoundFieldResource4"/>
         <asp:BoundField HeaderText="النوع" AccessibleHeaderText="نوع" DataField="نوع" meta:resourcekey="BoundFieldResource5" />
         <asp:BoundField HeaderText="الكمية" AccessibleHeaderText="الكمية" DataField="الكمية" meta:resourcekey="BoundFieldResource6" />
         <asp:BoundField HeaderText="الهاتف" AccessibleHeaderText="الهاتف" DataField="الهاتف" meta:resourcekey="BoundFieldResource7" />
         <asp:BoundField HeaderText="الموقع" AccessibleHeaderText="الموقع" DataField="الموقع" meta:resourcekey="BoundFieldResource8" />
         <asp:BoundField HeaderText="نوع المخلفات" AccessibleHeaderText="النوع" DataField="النوع" meta:resourcekey="BoundFieldResource9" />
         <asp:BoundField HeaderText="اسم المستهلك" AccessibleHeaderText="اسم المؤسسة" DataField="اسم المؤسسة" meta:resourcekey="BoundFieldResource10" />
         <asp:BoundField HeaderText="تاريخ الطلب" AccessibleHeaderText="التاريخ" DataField="التاريخ" meta:resourcekey="BoundFieldResource11"  />
        <asp:BoundField HeaderText="رقم الطلب" AccessibleHeaderText="رقم الطلب" DataField="رقم الطلب" meta:resourcekey="BoundFieldResource12"/>
     </Columns>
     </asp:GridView>
      
         <br />
      <hr style="background-color:white; color:white; border-color:white; height:3px; "/>
       <h2 style="font-size:25px;font-weight: bold;color:#0ac821;" class="auto-style7"><asp:Label runat="server" Text="  قائمة الطلبات السابقة   " meta:resourcekey="LabelResource12"></asp:Label></h2>
         <br />
     <asp:GridView runat="server" ID="GridView1" EmptyDataText="لا توجد طلبات" ShowHeaderWhenEmpty="True" BackColor="LightGoldenrodYellow" OnRowCommand="GridView1_RowCommand"  AutoGenerateColumns="False" ViewStateMode="Enabled" CellPadding="4" BorderWidth="1px" ForeColor="Black" GridLines="None" Height="110px" Width="1100px" meta:resourcekey="GridView1Resource1">
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
          <asp:BoundField HeaderText="الحالة" AccessibleHeaderText="الحالة" DataField="الحالة" meta:resourcekey="BoundFieldResource13"  />  
         <asp:BoundField HeaderText="الهاتف" AccessibleHeaderText="الهاتف الشركة" DataField="الهاتف الشركة" meta:resourcekey="BoundFieldResource14"  />
         <asp:BoundField HeaderText="الموقع " AccessibleHeaderText="موقع الشركة" DataField="موقع الشركة" meta:resourcekey="BoundFieldResource15"  />
           <asp:BoundField HeaderText="شركة إعادة التدوير"  AccessibleHeaderText="شركة إعادة التدوير" DataField="شركة إعادة التدوير" meta:resourcekey="BoundFieldResource16"/>
         <asp:BoundField HeaderText="النوع" AccessibleHeaderText="نوع" DataField="نوع" meta:resourcekey="BoundFieldResource17" />
         <asp:BoundField HeaderText="الكمية" AccessibleHeaderText="الكمية" DataField="الكمية" meta:resourcekey="BoundFieldResource18" />
         <asp:BoundField HeaderText="الهاتف" AccessibleHeaderText="الهاتف" DataField="الهاتف" meta:resourcekey="BoundFieldResource19" />
         <asp:BoundField HeaderText="الموقع" AccessibleHeaderText="الموقع" DataField="الموقع" meta:resourcekey="BoundFieldResource20" />
         <asp:BoundField HeaderText="نوع المخلفات" AccessibleHeaderText="النوع" DataField="النوع" meta:resourcekey="BoundFieldResource21" />
         <asp:BoundField HeaderText="اسم المستهلك" AccessibleHeaderText="اسم المؤسسة" DataField="اسم المؤسسة" meta:resourcekey="BoundFieldResource22" />
         <asp:BoundField HeaderText="تاريخ الطلب" AccessibleHeaderText="التاريخ" DataField="التاريخ" meta:resourcekey="BoundFieldResource23"  />
        <asp:BoundField HeaderText="رقم الطلب" AccessibleHeaderText="رقم" DataField="رقم" meta:resourcekey="BoundFieldResource24"/>
     </Columns>
      </asp:GridView>
         <br />
  </div>
            
  <!-- end of content -->
       
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto21">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا" meta:resourcekey="LabelResource13"></asp:Label></h1></th>
<th class="auto34" colspan="2"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto-style56"><asp:Label runat="server" Text=":تابعونا على" meta:resourcekey="LabelResource14"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto36"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource15"></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource4"/></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource5" />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource16"></asp:Label></a>
</td>
<td colspan="2" style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto-style27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource6"/>
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource17"></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource19"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource7"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto75"> <a href="Default.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="تسجيل الخروج" meta:resourcekey="LabelResource23"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="TruckDefault.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource21"></asp:Label></a> </td>
<td  class="auto77"><uc:LanguageUser runat="server" ID="LanguageUser" /></td>
</tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style30"> <asp:Label runat="server" CssClass="label"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource24"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource8"/></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource25"></asp:Label>     
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