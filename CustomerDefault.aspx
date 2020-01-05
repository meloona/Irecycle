<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDefault.aspx.cs" Inherits="Irecycle.CustomerHome"  Async="true" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" EnableSessionState="True"  %>

<%@ Register Src="~/UserControl/LanguageUserControl.ascx" TagName="LanguageUserControl" TagPrefix="uc1" %>
<%@ Register Src="~/UserControl/LanguageUser.ascx" TagName="LanguageUser" TagPrefix="uc" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


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
            height: 39px;
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
            width: 101px;
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
        .auto-style53 {
             height: 134px;
            width: 685px;
        }
        .radioButtonList label{
            display:inline;
            font-weight:bold;
            font-size:15px;
            text-align:center;
        }
        .edittextpading{
             padding-left:5px;
            
        }
        .auto-style55 {
            height: 39px;
            text-align: center;
            vertical-align: middle;
            width: 870px;
        }
        .auto-style58 {
            width: 334px;
            height: 50px;
           
        }
        .auto-style59 {
            height: 45px;
        }
        .auto-style60 {
            width: 467px;
            height: 39px;
        }
        .auto-style61 {
            width: 338px;
            height: 45px;
        }
        .auto-style62 {
            width: 343px;
            height: 43px;
        }
        .auto-style63 {
            height: 3px;
        }
        .auto-style64 {
            height: 57px;
        }
        .auto-style65 {
            width: 334px;
        }
        .auto-style66 {
            width: 338px;
            height: 50px;
        }
        .auto-style67 {
            height: 27px;
            text-align: center;
            vertical-align: middle;
        }
        .auto-style70 {
            width: 749px;
        }
        .auto-style71 {
            width: 675px;
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
            .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
        .auto-style72 {
            width: 850px;
        }
        .auto-style73 {
            width: 331px;
            height: 46px;
        }
        .auto-style74 {
            width: 504px;
            height: 35px;
        }
        .auto-style75 {
            width: 504px;
            height: 40px;
        }
        .auto-style76 {
            width: 331px;
            height: 35px;
        }
        .auto-style77 {
            width: 331px;
            height: 40px;
        }
        .auto-style78 {
            width: 328px;
            height: 34px;
        }
        .auto-style79 {
            width: 40px;
        }
        .auto-style80 {
            width: 48px;
        }
        .auto-style82 {
            width: 36px;
        }
        .auto-style83 {
            width: 67px;
        }
        .auto-style84 {
            width: 330px;
            height: 19px;
            font-family: Times New Roman;
            text-align: center;
            align-self: center;
            vertical-align: middle;
        }
      .Star
        {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        #TextArea1 {
            width: 630px;
            height: 368px;
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
      <li class="auto-style52" ><a href="LoginPage.aspx"><asp:Label runat="server" CssClass="labels"  Font-Size="Medium" Font-Bold="True" Text=" تسجيل الخروج " Width="127px" meta:resourcekey="LabelResource1"></asp:Label>  </a> </li>
      <li class="auto-style51"><a class="auto-style83" ></a></li>
      <li class="auto-style82"><a class="auto-style83" ></a></li>
     <li class="auto-style79"><a class="auto-style80" ></a></li>
     <li><a href="CustomerDefault.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels" Font-Bold="True"  Text=" الرئيسية" Width="56px" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

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
       <h2 style="font-size: 25px;font-weight: bold;color: black; letter-spacing:normal;" class="auto-style43"><asp:Label runat="server" Text="منصة إلكترونية تجعل لمخلفاتك قيمة مادية" meta:resourcekey="LabelResource4" ></asp:Label></h2>
      <asp:Image runat="server" src="images/logos.JPG" alt="" width="315px" height="220px" class="auto-style7" meta:resourcekey="ImageResource3" ID="Image1" />
		
     <h2 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;" class="auto-style18"><asp:Label runat="server" Text=" لنخلق معا بيئة عمانية نظيفة من خلال إدارة المخلفات الغير عضوية بشكل سليم " meta:resourcekey="LabelResource5" ></asp:Label></h2>
     <br />
	   <h2 style="font-size: 25px; font-weight: bold; color:#0ac821;" class="auto-style7"><asp:Label runat="server" CssClass="labels" Text="  الصفحة الشخصية للمستهلك " meta:resourcekey="LabelResource6"></asp:Label></h2>
       <div class="stylebu"><asp:Button ID="bu1" CssClass="button" runat="server" Font-Bold="True" Font-Size="Medium" Width="115px" Text="تعديل" OnClick="Update_Details" meta:resourcekey="bu1Resource1" ></asp:Button>
         <asp:Button ID="bu2" CssClass="button" runat="server" Font-Bold="True" Font-Size="Medium" Width="115px" Text="تحديث البيانات " OnClick="Updat_Details" Visible="False" meta:resourcekey="bu2Resource1"></asp:Button>
     </div>
      <table align="center" style="align-content:center; align-self:center;" class="auto-style53">
 
         <tr>
                 <td style="text-align:center" class="auto-style70">
             <asp:Label ID="emails"  runat="server" Height="26px" Width="193px" Text="Email" CssClass="label" ForeColor="GrayText" meta:resourcekey="emailsResource1"></asp:Label>
             <asp:TextBox ID="emails1"  runat="server" Height="26px" Width="193px" Text="Email" CssClass="edittextpading" Visible="False" meta:resourcekey="emails1Resource1"></asp:TextBox>
             <asp:Label runat="server" Text="   :البريد الإلكتروني" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource7"></asp:Label>
              </td>
             <td style="text-align:center" class="auto-style71">
              <asp:Label ID="name" runat="server" Height="26px" Width="217px" Text="name" CssClass="label" ForeColor="GrayText" meta:resourcekey="nameResource1"></asp:Label>   
              <asp:TextBox ID="name1"  runat="server" Height="26px" Width="193px" Text="name" CssClass="edittextpading" Visible="False" meta:resourcekey="name1Resource1"></asp:TextBox> 
             <asp:Label runat="server" Text=" :اسم المنشأة" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource8"></asp:Label>               
                 </td>
         </tr>

         <tr> 
              <td style="text-align:center" class="auto-style70">
             <asp:Label ID="addr" runat="server" Height="26px" Width="217px" Text="address" CssClass="label" ForeColor="GrayText" meta:resourcekey="addrResource1"></asp:Label>
                  <asp:TextBox ID="addr1"  runat="server" Height="26px" Width="193px" Text="name" CssClass="edittextpading" Visible="False" meta:resourcekey="addr1Resource1"></asp:TextBox> 
             <asp:Label runat="server" Text="    :الموقع" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource9"></asp:Label>       
              </td>  
        
             <td style="text-align:center" class="auto-style71">
             <asp:Label ID="phon" runat="server" Height="26px" Width="217px" Text="phone" CssClass="label" ForeColor="GrayText" meta:resourcekey="phonResource1" ></asp:Label>
                 <asp:TextBox ID="phon1"  runat="server" Height="26px" Width="193px" Text="name" CssClass="edittextpading" Visible="False" meta:resourcekey="phon1Resource1"></asp:TextBox> 
             <asp:Label runat="server" Text="    :الهاتف" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource10"></asp:Label>
              </td>
                    
        
         </tr>

          <tr>   
      
               <td colspan="2" style="text-align:center" class="auto-style60">
                 <br />
             <asp:Label ID="types" runat="server" Text="  type" Height="26px" Width="217px" CssClass="label"  ForeColor="GrayText" meta:resourcekey="typesResource1"></asp:Label>
             <asp:Label runat="server" Text="     :النقاط المجمعة " Font-Size="Large"  ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource11"></asp:Label>  
                 </td>              
         </tr>
          <tr>
               <td class="auto-style48">
                   <asp:TextBox ID="user" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="userResource1"></asp:TextBox>
                   <asp:TextBox ID="pass" runat="server" Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="passResource1"  ></asp:TextBox>
                   <asp:TextBox ID="repass" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="repassResource1"></asp:TextBox>
                   <asp:TextBox ID="rtype" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="rtypeResource1"></asp:TextBox>
                    <asp:TextBox ID="date" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="True" Visible="False" meta:resourcekey="dateResource1"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server"  Height="26px" Width="217px" CssClass="label"  ForeColor="GrayText" Visible="False" meta:resourcekey="Label1Resource1"></asp:Label>
              </td>
          </tr>
     </table>
        <br />
      <hr style="background-color:white; color:white; border-color:white; height:3px; "/>
       <br />
          <h2 style="font-size: 25px;font-weight: bold;color:#0ac821;" class="auto-style67"><asp:Label runat="server"  Font-Bold="True" Text=" بادر " meta:resourcekey="LabelResource12"></asp:Label></h2>
      <br /> <table align="center" style="align-content:center; align-self:center;" class="auto-style55">
 
         <tr>
             <td class="auto-style65">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="RadioButtonList1" Font-Bold="True" CssClass="validation"
             InitialValue="-1"  ForeColor="Red" meta:resourcekey="RequiredFieldValidator6Resource1"><asp:Label  runat="server" Text="يجب أن تختار نوع المخلفات" CssClass="labels" meta:resourcekey="LabelResource13"></asp:Label>   
            
</asp:RequiredFieldValidator>
             </td>
           <td style="text-align:center; letter-spacing:normal;"  class="auto-style61">
           <asp:RadioButtonList CssClass="radioButtonList" runat="server" ID="RadioButtonList1" Width="497px" RepeatDirection="Horizontal" Height="19px" meta:resourcekey="RadioButtonList1Resource1">
                <asp:ListItem  Text=" أخرى" Value="معادن أخرى" meta:resourcekey="ListItemResource10"></asp:ListItem>
               <asp:ListItem Text="ورق" Value="ورق" meta:resourcekey="ListItemResource1"></asp:ListItem>
                <asp:ListItem  Text="بلاستك" Value="بلاستك" meta:resourcekey="ListItemResource2"></asp:ListItem>
                <asp:ListItem  Text="زجاج" Value="زجاج" meta:resourcekey="ListItemResource3"></asp:ListItem>
                <asp:ListItem  Text="كرتون" Value="كرتون" meta:resourcekey="ListItemResource4"></asp:ListItem>
                <asp:ListItem  Text="حديد" Value="حديد" meta:resourcekey="ListItemResource7"></asp:ListItem>
                <asp:ListItem  Text="ألمونيوم" Value="ألمونيوم" meta:resourcekey="ListItemResource8"></asp:ListItem>
                <asp:ListItem  Text="إطارات" Value="إطارات" meta:resourcekey="ListItemResource9"></asp:ListItem>
               
            </asp:RadioButtonList>       
           </td>
            
             <td style="text-align:center; letter-spacing:normal;" class="auto-style59">               
             <asp:Label runat="server" Text=" :اختيار نوع المخلفات" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource14"></asp:Label>               
                 </td>
         </tr>
              <tr>
                  <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="weight" Font-Bold="True" CssClass="validation"
             InitialValue="-1"  ForeColor="Red" meta:resourcekey="RequiredFieldValidator6Resource1"><asp:Label runat="server" Text="يجب ادخال الوزن " meta:resourcekey="LabelResource15"></asp:Label>   
            
</asp:RequiredFieldValidator><br />
          
                  </td>
         <td class="auto-style58" align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="weight" runat="server" align="right" Height="26px" Width="217px" CssClass="edittextpading" meta:resourcekey="weightResource1" ></asp:TextBox>  
         </td>
             <td style="text-align:center; letter-spacing:normal;" class="auto-style66">
             
             <asp:Label runat="server" Text=" :(kg) الوزن" Font-Size="Large" ForeColor="Black" Font-Bold="True" CssClass="labels" meta:resourcekey="LabelResource16"></asp:Label>               
                 </td>
         </tr>
         <tr> 
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="type" Font-Bold="True" CssClass="validation"
             InitialValue="-1"  ForeColor="Red" meta:resourcekey="RequiredFieldValidator6Resource1"><asp:Label runat="server" CssClass="labels" Text="يجب أن تختار" meta:resourcekey="LabelResource17"></asp:Label>   
            
</asp:RequiredFieldValidator>
             </td>
             <td align="center" style=" letter-spacing:normal;" class="auto-style62" >  
                 <asp:RadioButtonList CssClass="radioButtonList" runat="server" ID="type" Width="162px" RepeatDirection="Horizontal" meta:resourcekey="typeResource2">
                <asp:ListItem Text="تبرع" Value="تبرع" meta:resourcekey="ListItemResource5"></asp:ListItem>
                <asp:ListItem  Text="بيع" Value="بيع" meta:resourcekey="ListItemResource6"></asp:ListItem>
            </asp:RadioButtonList>            
              </td>
         </tr>
           <tr>
            <td>

               </td>
               <td align="right">
                   <asp:FileUpload ID="FileUpload1" runat="server" Width="317px" Height="27px"/>
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr >
               <td colspan="3" class="auto-style64">
                   <asp:Button runat="server" CssClass="button" Text="إرسال" OnClick="Register_Click" meta:resourcekey="ButtonResource1"  />
               </td>
           </tr>
           </table>
   
        <br />
      <hr style="background-color:white;  color:white; border-color:white; height:3px;" class="auto-style63"/>
      <br />
      <h2 style="font-size: 25px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style67"><asp:Label runat="server"  Font-Bold="True" Text=" حالة الطلب " meta:resourcekey="LabelResource19"></asp:Label></h2>
      <br />
      <asp:GridView runat="server" ID="GridView1" CssClass="label" EmptyDataText="لا توجد طلبات" ShowHeaderWhenEmpty="True" BackColor="LightGoldenrodYellow" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" CellPadding="4" BorderWidth="1px" ForeColor="Black" GridLines="None" Height="110px" Width="979px" meta:resourcekey="GridView1Resource1">
       <AlternatingRowStyle BackColor="White"  Font-Bold="True" ForeColor="Black" Font-Size="Small" />
         <EditRowStyle BackColor="#7C6F57"  Font-Bold="True" ForeColor="Black" Font-Size="Small"/>
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="Small" />
         <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White"  Font-Size="Medium" Height="40px"/>
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
                 <asp:Button  runat="server"  Text="Rating " CommandName="Rating"  CommandArgument="<%# Container.DataItemIndex %>" Visible='<%# DataBinder.Eval(Container.DataItem,"الحالة").ToString()=="تم التسليم" %>' CssClass="ignor"  />
             </ItemTemplate>
         </asp:TemplateField>
         <asp:BoundField HeaderText="الحالة" AccessibleHeaderText="الحالة" DataField="الحالة" meta:resourcekey="BoundFieldResource1"  /> 
         <asp:BoundField HeaderText="التاريخ" AccessibleHeaderText="التاريخ" DataField="التاريخ" meta:resourcekey="BoundFieldResource2"  />
         <asp:BoundField HeaderText="الهاتف" AccessibleHeaderText="الهاتف" DataField="الهاتف" meta:resourcekey="BoundFieldResource3"  />
         <asp:BoundField HeaderText="النوع" AccessibleHeaderText="النوع" DataField="النوع" meta:resourcekey="BoundFieldResource4"  />
           <asp:BoundField HeaderText="(kg)الكمية"  AccessibleHeaderText="(kg)الكمية" DataField="(kg)الكمية" meta:resourcekey="BoundFieldResource5"/>
         <asp:BoundField HeaderText="اسم المؤسسة" AccessibleHeaderText="اسم المؤسسة" DataField="اسم المؤسسة" meta:resourcekey="BoundFieldResource6" />
        <asp:BoundField HeaderText="رقم الطلب" AccessibleHeaderText="رقم الطلب" DataField="رقم الطلب" meta:resourcekey="BoundFieldResource7"/>
        
     </Columns> 

        </asp:GridView>
      <br />
      <br />
  </div>
  <!-- end of content -->
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto-style72">
<tr>
<th colspan="2" class="auto-style84"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا " meta:resourcekey="LabelResource20"></asp:Label></h1></th>
<th class="auto-style84" colspan="2" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto-style78"><asp:Label runat="server"  Text=":تابعونا على" meta:resourcekey="LabelResource21"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style76"><asp:Label CssClass="labels" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource22" ></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource5" /></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto-style74"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource6"  />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource23"></asp:Label></a>
</td>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource7" />
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource24" ></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style77"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource25"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource7"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto-style75"> <a href="Default.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="تسجيل الخروج" meta:resourcekey="LabelResource29"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="CustomerDefault.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource27"></asp:Label></a> </td>
<td  class="auto77"><uc:LanguageUser runat="server" ID="LanguageUser" /></td>
</tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style73"> <asp:Label runat="server" CssClass="label"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource31"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource9" /></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource32"></asp:Label>     
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
      <script type="text/javascript">
function basicPopup() 
{
    popupWindow = window.open("Rating.aspx", 'popUpWindow', 'height=150,width=210,left=100,top=30,resizable=No,scrollbars=No,toolbar=no,menubar=no,location=no,directories=no, status=No');
}
</script>
    </form>
</body>
</html>
