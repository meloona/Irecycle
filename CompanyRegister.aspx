<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyRegister.aspx.cs" Inherits="Irecycle.CompanyRegister" Async="true" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"  %>

<%@ Register Src="~/UserControl/LanguageUserControl.ascx" TagName="LanguageUserControl" TagPrefix="uc1" %>
<%@ Register Src="~/UserControl/LanguageUser.ascx" TagName="LanguageUser" TagPrefix="uc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="style.css" rel="stylesheet" type="text/css"/>
  
    <style type="text/css">
        .auto-style7 {
            height: 39px;
            text-align:center;
            vertical-align:middle;
        }
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
      
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
      
       .auto-style40 {
            width: 78px;
            height: 38px;
        }
      .textstyle{
          font-family: Arial, Helvetica, sans-serif;
          letter-spacing:normal;
      }
          .auto-style43 {
            width: 998px;
            height: 496px;
        }
        .bodyimg{
          background-image:url(images/background.png)
      }
        .auto-style46 {
            width: 34px;
        }
        .auto-style51 {
           align-self:center;
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
        .edittextpading{
             padding-left:5px;
        }
        
       
        
          .validation{
              cursor:default;
               font-family: Arial, Helvetica, sans-serif;
               letter-spacing:normal;
               font-size:10px;
          }
        .auto-style62 {
            width: 279px;
            height: 58px;
        }
        
       .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
            }
        
         .auto-style52 {
            width: 185px;        
            text-align:left;
            
        }
           .auto-style47 {
            width: 192px;
        }
       
        
        .auto-style69 {
            width: 279px;
            height: 17px;
        }
        .auto-style73 {
            width: 279px;
            height: 41px;
        }
        .auto-style87 {
            width: 210px;
            height: 78px;
        }
        .auto-style88 {
            height: 78px;
        }
        .auto-style51 {
            width: 83px;
        }
        .imagestyle {
            margin-top:20px;
        }
        
        .auto-style89 {
            width: 847px;
        }
        
        .auto-style90 {
            width: 404px;
            height: 45px;
        }
        
        .auto-style91 {
            width: 281px;
            height: 58px;
        }
        .auto-style93 {
            width: 281px;
            height: 41px;
        }
        
        .auto-style95 {
            height: 15px;
        }
        .auto-style97 {
            width: 210px;
            height: 17px;
        }
        .auto-style99 {
            width: 281px;
            height: 17px;
        }
        .auto-style101 {
            height: 17px;
        }
        .auto-style102 {
            width: 210px;
            height: 41px;
        }
        .auto-style103 {
            height: 41px;
        }
        
        .auto-style104 {
            width: 210px;
            height: 57px;
        }
        .auto-style105 {
            width: 281px;
            height: 57px;
        }
        .auto-style106 {
            width: 279px;
            height: 57px;
        }
        .auto-style107 {
            height: 57px;
        }
        
        .auto-style108 {
            width: 210px;
            height: 58px;
        }
        .auto-style109 {
            height: 58px;
        }
        
        </style>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"  rel="stylesheet" type="text/css" />  
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>  
    <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css"  rel="stylesheet" type="text/css" />  
    <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js"  
            type="text/javascript"></script>  
    <script type="text/javascript">  
            $(function () {  
                $('[id*=type]').multiselect({  
                    includeSelectAllOption: true  
                });  
        });  
    </script>
</head>
<body class="bodyimg">
    <form id="form1" runat="server">
     <div id="wrapper">
<br/>

  <div id="menu" >
    <ul class="auto-style39" >
 	  <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li  class="auto-style52"><a href="LoginPage.aspx"><asp:Label runat="server" CssClass="labels" Font-Size="Medium" Font-Bold="True" Text=" تسجيل الدخول " Width="99px" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>
      <li><a class="auto-style551" ></a></li>
      <li><a ></a></li>
	  <li ><a href="AboutUs.aspx" class="auto-style40"><asp:Label runat="server"  Font-Size="Medium" Font-Bold="True" CssClass="labels" Text=" من نحن" meta:resourcekey="LabelResource4" Width="88px"></asp:Label>  </a> </li>
      <li><a href="Default.aspx"><asp:Label runat="server" Font-Size="Medium"  Font-Bold="True" CssClass="labels"  Text=" الرئيسية" meta:resourcekey="LabelResource5"></asp:Label>  </a> </li>

    </ul>
  </div>
  <!-- end of menu -->
   
 

 
  <div id="content">
        <div id="latest_product_gallery" class="auto-style8">   
            
 <h2 style="font-size: 28px;font-weight: bold;color:#0ac821; letter-spacing:normal;" class="auto-style7"><asp:Label runat="server" Text="بيانات تسجيل شركة إعادة التدوير" meta:resourcekey="LabelResource6"></asp:Label></h2>		
    <table style="align-content:center; align-self:center;" class="auto-style43">
 
         <tr>
               <td class="auto-style104"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="username"
             ErrorMessage="لا يمكن ترك اسم المستخدم فارغا" 
                    Font-Bold="True" CssClass="validation"
             SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator2Resource1"><asp:Label runat="server" Text="لا يمكن ترك اسم المستخدم فارغا" meta:resourcekey="LabelResource27"></asp:Label>
       
</asp:RequiredFieldValidator><br />
                 <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="username"
                     ValidationExpression="^[a-zA-Z]+[0-9]+$"
                        Font-Bold="True" CssClass="validation"
                     ErrorMessage="اسم المستخدم يجب أن يحتوي على حروف وأرقام"
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator5Resource1" />--%>
               </td>
               <td style="text-align:center" class="auto-style105">

               <asp:Label runat="server" Text="  اسم المستخدم" Font-Size="Medium" CssClass="textstyle" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource7"></asp:Label>
                 <br /> <div style="align-content:center;"> 
                   <table align="center">
                    <tr>
                    <td>
                   <asp:Image runat="server" src="images/username.png" height="30px" class="auto-style46" meta:resourcekey="ImageResource2"/>
                    </td>
                    <td>
                <asp:TextBox ID="username" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="usernameResource1"></asp:TextBox>
                </td>
                        </tr>
                        </table>
                   </div>    
              </td>
             <td style="text-align:center" class="auto-style106">
             <asp:Label runat="server" Text=" اسم الشركة" Font-Size="Medium" ForeColor="GrayText" CssClass="textstyle" Font-Bold="True" meta:resourcekey="LabelResource8"></asp:Label>
                 <br />   <div style="align-content:center;"> 
                      <table align="center">
                    <tr>
                    <td>
                   <asp:Image runat="server" src="images/company.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource3"/>
                    </td>
                    <td>
                    <asp:TextBox ID="companyName" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="companyNameResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table> 
                </div> 
             </td>
               <td class="auto-style107"><asp:RequiredFieldValidator ID="rfvFirstName" 
                 runat="server" 
                 ControlToValidate="companyName"
              ErrorMessage="لا يمكن ترك اسم الشركة فارغا" 
                    Font-Bold="True" CssClass="validation"
               SetFocusOnError="True" ForeColor="Red" meta:resourcekey="rfvFirstNameResource1"><asp:Label runat="server" Text="لا يمكن ترك اسم الشركة فارغا " meta:resourcekey="LabelResource28"></asp:Label>
        
</asp:RequiredFieldValidator>
                 <%--  <br />  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  Font-Bold="True" ControlToValidate="companyName"
                     ValidationExpression="^[a-zA-Z\\s]+$" CssClass="validation"
                     ErrorMessage="الاسم غير صحيح ،يجب أن يحتوي على أحرف فقط"
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator4Resource1" />--%>
               </td>
         </tr>

         <tr>
              <td class="auto-style97">  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ControlToValidate="pass"
            ErrorMessage="لا يمكن ترك كلمة المرور فارغا" 
                   Font-Bold="True" CssClass="validation"
             SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator4Resource1"><asp:Label runat="server" Text="لا يمكن ترك كلمة المرور فارغا " meta:resourcekey="LabelResource26"></asp:Label>
       
</asp:RequiredFieldValidator><br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pass"  Font-Bold="True"
                     ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,}" CssClass="validation"
                     ErrorMessage="يجب أن تحتوي كلمة المرور على:الحد الأدنى 6 أحرف،على الأقل حرف كبير ،حرف صغير،واحد من الأرقام و على الأقل واحد من الأحرف الخاصة"
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator2Resource1" />
                </td>
             <td style="text-align:center" class="auto-style99">
             <asp:Label runat="server" Text="   كلمة المرور" Font-Size="Medium" CssClass="textstyle" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource9"></asp:Label>
               <br /><div style="align-content:center;"> 
                   <table align="center">
                    <tr>
                    <td>
                  <asp:Image runat="server" src="images/password.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource4"/>
                    </td>
                    <td>
                 <asp:TextBox ID="pass" runat="server" Height="26px" Width="217px" TextMode="Password" BackColor="White" CssClass="edittextpading" meta:resourcekey="passResource1"></asp:TextBox>
                </td>
                        </tr>
                        </table>
                   </div>
              </td>
              
           <td style="text-align:center" class="auto-style69">
               <br />
             <asp:Label runat="server" Text="   البريد الإلكتروني" CssClass="textstyle" Font-Size="Medium" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource10"></asp:Label>
               <br /><div style="align-content:center;"> 
                   <table align="center">
                    <tr>
                    <td>
                    <asp:Image runat="server" src="images/email.png" height="26px" width="30px" meta:resourcekey="ImageResource5" />
                    </td>
                    <td>
                     <asp:TextBox ID="email" runat="server" Height="26px" Width="217px" TextMode="Email" BackColor="White" CssClass="edittextpading" meta:resourcekey="emailResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table>
                   </div>
              </td>
             <td class="auto-style101">
                 <asp:RequiredFieldValidator 
                     ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="email"
                   ErrorMessage="لا يمكن ترك البريد الإلكتروني فارغا" 
                      Font-Bold="True" CssClass="validation"
                     SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator1Resource1"><asp:Label runat="server" Text="لا يمكن ترك البريد الإلكتروني فارغا" meta:resourcekey="LabelResource29"></asp:Label>
                 
</asp:RequiredFieldValidator><br />
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"  Font-Bold="True" CssClass="validation"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="البريد الالكترووني غير صحيح" ForeColor="Red" meta:resourcekey="RegularExpressionValidator1Resource1"/>
             </td>
            
         </tr>
         <tr>
             <td class="auto-style102">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="repass"
                     ErrorMessage="لا يمكن ترك كلمة المرور فارغا" 
                         Font-Bold="True" CssClass="validation"
                     SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator5Resource1"><asp:Label runat="server" Text="لا يمكن ترك كلمة المرور فارغا" meta:resourcekey="LabelResource30"></asp:Label>
                     
</asp:RequiredFieldValidator><br />
                 <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="validation"  Font-Bold="True" ErrorMessage="كلة المرور غير متطابقة " ControlToCompare="pass" ControlToValidate="repass" ForeColor="Red" meta:resourcekey="CompareValidator1Resource1"></asp:CompareValidator>
             </td>
             <td style="text-align:center" class="auto-style93">
                 <br />
              <asp:Label runat="server" Text="    تأكيد كلمة المرور" Font-Size="Medium" CssClass="textstyle" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource11"></asp:Label>
               <br /><div style="align-content:center;"> 
                    <table align="center">
                    <tr>
                    <td>
                     <asp:Image runat="server" src="images/password.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource6"/>
                    </td>
                    <td>
                    <asp:TextBox ID="repass" runat="server" Height="26px" Width="217px" TextMode="Password" BackColor="White" CssClass="edittextpading" meta:resourcekey="repassResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table>
                   </div>
               </td>
               
           <td style="text-align:center" class="auto-style73">
               <br />
             <asp:Label runat="server" Text="    الهاتف" Font-Size="Medium" CssClass="textstyle" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource12"></asp:Label>
               <br /><div style="align-content:center;"> 
                   <table align="center">
                    <tr>
                    <td class="auto-style95">
                     <asp:Image runat="server" src="images/phone.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource7"/>
                    </td>
                    <td class="auto-style95">
                   <asp:TextBox ID="phone" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="phoneResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table>
                   </div>
              </td>
                <td class="auto-style103">
                      <asp:RequiredFieldValidator ID="rfvPwd" 
                        runat="server" ControlToValidate="phone"
                          ErrorMessage="لا يمكن ترك رقم الهاتف فارغا" 
                           Font-Bold="True" CssClass="validation"
                         SetFocusOnError="True" ForeColor="Red" meta:resourcekey="rfvPwdResource1"><asp:Label runat="server" Text="لا يمكن ترك رقم الهاتف فارغا" meta:resourcekey="LabelResource31"></asp:Label>
                   
</asp:RequiredFieldValidator><br />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  Font-Bold="True" ControlToValidate="phone" 
                  ValidationExpression="[0-9]{8}" ErrorMessage="رقم القاتف غير صحيح" ForeColor="Red" CssClass="validation" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>  
             </td>
         </tr>

          <tr>   
               <td class="auto-style108"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="type" Font-Bold="True" CssClass="validation"
             InitialValue="-1"  ForeColor="Red" meta:resourcekey="RequiredFieldValidator6Resource1"><asp:Label runat="server" Text="يجب أن تختار نوع المخلفات" meta:resourcekey="LabelResource33"></asp:Label>
       
</asp:RequiredFieldValidator></td>
              
             <td style="text-align:center" class="auto-style91">
             <asp:Label runat="server" Text="شركة مختصة ب" CssClass="textstyle" Font-Size="Medium"  ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource14" ID="Label1"></asp:Label>
               <br />
          <asp:ListBox ID="type" runat="server" SelectionMode="Multiple" ForeColor="White" Font-Size="Medium" Font-Bold="True" Height="26px" Width="217px" BackColor="Gray" runat="server" CssClass="edittextpading" meta:resourcekey="typeResource1">
            <asp:ListItem  Text="ورق " Value="ورق" meta:resourcekey="ListItemResource2"></asp:ListItem>
            <asp:ListItem  Text="كرتون " Value="كرتون" meta:resourcekey="ListItemResource3"></asp:ListItem>
            <asp:ListItem  Text="بلاستك " Value="بلاستك" meta:resourcekey="ListItemResource4"></asp:ListItem>
            <asp:ListItem  Text="زجاج " Value="زجاج" meta:resourcekey="ListItemResource5"></asp:ListItem>
            <asp:ListItem  Text="حديد " Value="حديد" meta:resourcekey="ListItemResource6"></asp:ListItem>
            <asp:ListItem  Text="ألمونيوم " Value="ألمونيوم" meta:resourcekey="ListItemResource7"></asp:ListItem>
            <asp:ListItem  Text="إطارات " Value="إطارات" meta:resourcekey="ListItemResource8"></asp:ListItem>
            <asp:ListItem  Text=" أخرى " Value=" أخرى" meta:resourcekey="ListItemResource9"></asp:ListItem>
            </asp:ListBox>             
             </td>
         <td style="text-align:center" class="auto-style62">
             <asp:Label runat="server" Text="    الموقع" Font-Size="Medium" ForeColor="GrayText" CssClass="textstyle" Font-Bold="True" meta:resourcekey="LabelResource13"></asp:Label>
               <br /><div style="align-content:center;"> 
                     <table align="center">
                    <tr>
                    <td>
                      <asp:Image runat="server" src="images/location.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource8"/>
                    </td>
                    <td>
                    <asp:TextBox ID="address" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="addressResource1"></asp:TextBox>   
                    </td>
                        </tr>
                        </table>
                   </div>
              </td>
               <td class="auto-style109"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="address"
                    ErrorMessage="لا يمكن ترك الموقع فارغا" 
                    Font-Bold="True" CssClass="validation"
                     SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator3Resource1"><asp:Label runat="server" Text="لا يمكن ترك الموقع فارغا" meta:resourcekey="LabelResource32"></asp:Label>
                  
</asp:RequiredFieldValidator>
                   <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="address"
                     ValidationExpression="^[a-zA-Z\\s]+$"
                        Font-Bold="True" CssClass="validation"
                     ErrorMessage="الموقع غير صحيح ،يجب أن يحتوي على أحرف فقط"
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator6Resource1" />
               </td>
         </tr>
     
         <tr>
             <td class="auto-style87"></td>
              <td  colspan="2" class="auto-style88">
                  <br />
                  <asp:TextBox ID="date" runat="server"  Font-Size="Large" ForeColor="GrayText" Font-Bold="true" Visible="false"></asp:TextBox>
                    <asp:Button runat="server" CssClass="button" Text="إرسال" OnClick="Register_Click" meta:resourcekey="ButtonResource1" />
             </td>
             
          
         </tr>
     </table>
             
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
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
       
      
  </div>
     
  <!-- end of content -->
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto-style89">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal;text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا"  meta:resourcekey="LabelResource20"></asp:Label></h1></th>
<th class="auto34" colspan="3" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto73"><asp:Label runat="server" Text=":تابعونا على"  meta:resourcekey="LabelResource21"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto36"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource15"></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource9"/></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource10" />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource16"></asp:Label></a>
</td>
<td  colspan="2"  style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource11"/>
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource17"></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource18"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource12"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto75"><a href="AboutUs.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="من نحن" meta:resourcekey="LabelResource19"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Default.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource22"></asp:Label></a> </td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto77">  <a href="LoginPage.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="تسجيل الدخول" meta:resourcekey="LabelResource25"></asp:Label></a>
</td>
  <td  class="auto-style38"><uc:LanguageUser runat="server" ID="LanguageUser" /></td>

</tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style90"> <asp:Label runat="server" CssClass="label"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource24"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource13"/></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource35"></asp:Label>     
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

