<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrucksRegister.aspx.cs" Inherits="Irecycle.TrucksRegister"  Async="true" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"  %>

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
       .labels {
            cursor: default;
            letter-spacing: normal;
            font-family: Times New Roman;
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
      
        .auto-style27 {
            width: 330px;
        }
              
        .auto-style30 {
            width: 301px;
            height: 35px;
        }
              
        .auto-style39 {
            width: 953px;
            height: 19px;
        }
      
        .auto-style40 {
            width: 78px;
            height: 38px;
        }
      
        .auto-style42 {
            text-align:left;
        
        }
      
        .auto-style43 {
            width: 983px;
        }
        .bodyimg{
          background-image:url(images/background.png)
      }
        .auto-style46 {
            width: 34px;
        }
     
        .auto-style51 {
           align-self:flex-end;
           
        }
        .auto-style59 {
            width: 278px;
        }
        .auto-style61 {
            width: 203px;
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
          .auto-style38 {
            width: 270px;
            height: 40px;
        }
          .edittextpading{
             padding-left:5px;
        }
           .textstyle{
          font-family: Arial, Helvetica, sans-serif;
          letter-spacing:normal;
      }
         .validation{
              cursor:default;
               font-family: Arial, Helvetica, sans-serif;
               letter-spacing:normal;
               font-size:10px;
          }
              .auto-style47 {
            width: 192px;
        }
          .imagestyle {
            margin-top:20px;
        }
        .auto-style62 {
            width: 275px;
        }
        .auto-style63 {
            width: 135px;
        }
        .auto-style64 {
            width: 134px;
        }
        .auto-style65 {
            width: 123px;
        }
        .auto-style66 {
            width: 314px;
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
         <li></li>
 	  <li class="auto-style47" ><uc1:LanguageUserControl runat="server" ID="Language" /></li> 
      <li ><a href="LoginPage.aspx"><asp:Label runat="server" CssClass="labels" Font-Size="Medium" Font-Bold="True" Text=" تسجيل الدخول " Width="99px" meta:resourcekey="LabelResource1"></asp:Label>  </a> </li>
      <li><a class="auto-style42" ></a></li>
      <li class="auto-style65"><a ></a></li>
	  <li class="auto-style64" ><a href="AboutUs.aspx" class="auto-style40"><asp:Label runat="server" CssClass="labels" Font-Size="Medium" Font-Bold="True"  Text=" من نحن" Width="84px" meta:resourcekey="LabelResource2"></asp:Label>  </a> </li>
      <li class="auto-style63"><a href="Default.aspx"><asp:Label runat="server" Font-Size="Medium" CssClass="labels" Font-Bold="True"  Text=" الرئيسية" meta:resourcekey="LabelResource3"></asp:Label>  </a> </li>

    </ul>

  </div>
  <!-- end of menu -->
   
 

 
  <div id="content">
        <div id="latest_product_gallery" class="auto-style8">   
            
 <h2 style="font-size:28px;font-weight: bold;color:#0ac821;letter-spacing:normal;" class="auto-style7"><asp:Label runat="server" Text="بيانات تسجيل الشاحنة " meta:resourcekey="LabelResource4"></asp:Label></h2>		
      <table style="align-content:center; align-self:center;" class="auto-style43">
 
         <tr>
               <td class="auto-style61"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="username" CssClass="validation"
             ErrorMessage="لا يمكن ترك اسم المستخدم فارغا" Font-Bold="True"
             SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator2Resource1"><asp:Label runat="server" Text="لا يمكن ترك اسم المستخدم فارغا" meta:resourcekey="LabelResource22"></asp:Label>
       
</asp:RequiredFieldValidator>
                    <br />  <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="username"
                     ValidationExpression="^[a-zA-Z]+[0-9]+$" Font-Bold="True" CssClass="validation"
                     ErrorMessage="اسم المستخدم يجب أن يحتوي على حروف وأرقام"
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator5Resource1" />--%>
               </td>
               <td style="text-align:right" class="auto-style59">
               <asp:Label runat="server" Text="  اسم المستخدم" Font-Size="Medium"  CssClass="textstyle" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource5"></asp:Label>
                 <br />  <div style="align-content:center; margin-top:5px;"> 
                      <table align="center">
                    <tr>
                    <td>
                      <asp:Image runat="server" src="images/username.png" height="30px" class="auto-style46" meta:resourcekey="ImageResource1"/>
                    </td>
                    <td>
                   <asp:TextBox ID="username" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="usernameResource1" ></asp:TextBox>
                    </td>
                        </tr>
                        </table>
                     </div>
              </td>
             <td style="text-align:right" class="auto-style62">
             <asp:Label runat="server" Text=" الاسم الثلاثي" Font-Size="Medium"  CssClass="textstyle"  ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource6"></asp:Label>
                 <br />   <div style="align-content:center; margin-top:5px;"> 
                     <table align="center">
                    <tr>
                    <td>
                     <asp:Image runat="server" src="images/card.png" height="30px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource2"/>
                    </td>
                    <td>
                  <asp:TextBox ID="TruckName" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="estaplishNameResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table>
                </div> 
             </td>
               <td><asp:RequiredFieldValidator ID="rfvFirstName" 
                 runat="server" 
                 ControlToValidate="TruckName"
              ErrorMessage="لا يمكن ترك الاسم فارغا" Font-Bold="True" CssClass="validation"
               SetFocusOnError="True" ForeColor="Red" meta:resourcekey="rfvFirstNameResource1"><asp:Label runat="server" Text="لا يمكن ترك الاسم فارغا" meta:resourcekey="LabelResource23"></asp:Label>
        
</asp:RequiredFieldValidator>
                   <br />  <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TruckName"
                     ValidationExpression="^[a-zA-Z]+\s+[a-zA-Z]+\s+[a-zA-Z]+\s+[a-zA-Z]+$" Font-Bold="True" CssClass="validation"
                     ErrorMessage="الاسم غير صحيح ،يجب أن يحتوي على أحرف فقط "
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator4Resource1" />--%>
               </td>
         </tr>

         <tr>
              <td class="auto-style61">  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ControlToValidate="pass"
             ErrorMessage="لا يمكن ترك كلمة المرور فارغا" Font-Bold="True" CssClass="validation"
             SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator4Resource1"><asp:Label runat="server" Text="لا يمكن ترك كلمة المرور فارغا" meta:resourcekey="LabelResource24"></asp:Label>
       
</asp:RequiredFieldValidator><br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pass"
                     ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,}" Font-Bold="True" CssClass="validation"
                     ErrorMessage="يجب أن تحتوي كلمة المرور على:الحد الأدنى 6 أحرف،على الأقل حرف كبير ،حرف صغير،واحد من الأرقام و على الأقل واحد من الأحرف الخاصة"
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator2Resource1" />
                </td>
             <td style="text-align:right" class="auto-style59">
             <asp:Label runat="server" Text="   كلمة المرور" Font-Size="Medium"  CssClass="textstyle"  ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource7"></asp:Label>
               <br /><div style="align-content:center;margin-top:5px;"> 
                       <table align="center">
                    <tr>
                    <td>
                     <asp:Image runat="server" src="images/password.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource3"/>
                    </td>
                    <td>
                    <asp:TextBox ID="pass" runat="server" Height="26px" Width="217px" TextMode="Password" BackColor="White" CssClass="edittextpading" meta:resourcekey="passResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table>        
                   </div>
              </td>
              
           <td style="text-align:right" class="auto-style62">
               <br />
             <asp:Label runat="server" Text="   نوع الشاحنة" Font-Size="Medium"  CssClass="textstyle"  ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource8"></asp:Label>
               <br /><div style="align-content:center;margin-top:5px;"> 
                        <table align="center">
                    <tr>
                    <td>
                       <asp:Image runat="server" src="images/truck.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource4"/>
                    </td>
                    <td>
                    <asp:TextBox ID="carname" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="emailResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table>       
                   </div>
              </td>
             <td>
                 <asp:RequiredFieldValidator 
                     ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="carname" CssClass="validation"
                    ErrorMessage="لا يمكن ترك نوع الشاحنة فارغا" Font-Bold="True"
                     SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator1Resource1"><asp:Label runat="server" Text="لا يمكن ترك نوع الشاحنة فارغا" meta:resourcekey="LabelResource25"></asp:Label>
                 
</asp:RequiredFieldValidator><br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="carname"
                     ValidationExpression="^[a-zA-Z\\s]+$" Font-Bold="True" CssClass="validation"
                     ErrorMessage="الاسم غير صحيح ،يجب أن يحتوي على أحرف فقط "
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator1Resource1" /> </td>
            
         </tr>
         <tr>
             <td class="auto-style61">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                    runat="server" ControlToValidate="repass" CssClass="validation"
                     ErrorMessage="لا يمكن ترك كلمة المرور فارغا" Font-Bold="True"
                     SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator5Resource1"><asp:Label runat="server" Text="لا يمكن ترك كلمة المرور فارغا" meta:resourcekey="LabelResource26"></asp:Label>
                     
</asp:RequiredFieldValidator><br />
                 <asp:CompareValidator ID="CompareValidator1" CssClass="validation" runat="server" ErrorMessage="كلة المرور غير متطابقة" Font-Bold="True" ControlToCompare="pass" ControlToValidate="repass" ForeColor="Red" meta:resourcekey="CompareValidator1Resource1"></asp:CompareValidator>
             </td>
             <td style="text-align:right" class="auto-style59">
                 <br />
              <asp:Label runat="server" Text="    تأكيد كلمة المرور" Font-Size="Medium"  CssClass="textstyle" ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource9"></asp:Label>
               <br /><div style="align-content:center; margin-top:5px;"> 
                    <table align="center">
                    <tr>
                    <td>
                     <asp:Image runat="server" src="images/password.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource5"/>
                    </td>
                    <td>
                    <asp:TextBox ID="repass" runat="server" Height="26px" Width="217px" TextMode="Password" BackColor="White" CssClass="edittextpading" meta:resourcekey="repassResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table> 
                   </div>
               </td>
               
           <td style="text-align:right" class="auto-style62">
               <br />
             <asp:Label runat="server" Text="    الهاتف" Font-Size="Medium"  CssClass="textstyle"  ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource10"></asp:Label>
               <br /><div style="align-content:center;margin-top:5px;"> 
                     <table align="center">
                    <tr>
                    <td>
                     <asp:Image runat="server" src="images/phone.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource6"/>
                    </td>
                    <td>
                    <asp:TextBox ID="phone" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="phoneResource1"></asp:TextBox>
                    </td>
                        </tr>
                        </table> 
                   </div>
              </td>
                <td>
                      <asp:RequiredFieldValidator ID="rfvPwd" 
                        runat="server" ControlToValidate="phone" CssClass="validation"
                         ErrorMessage="لا يمكن ترك رقم الهاتف فارغا" Font-Bold="True"
                         SetFocusOnError="True" ForeColor="Red" meta:resourcekey="rfvPwdResource1"><asp:Label runat="server" Text="لا يمكن ترك رقم الهاتف فارغا" meta:resourcekey="LabelResource27"></asp:Label>
                   
</asp:RequiredFieldValidator><br />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="phone" Font-Bold="True"
                   ValidationExpression="[0-9]{8}" ErrorMessage="رقم القاتف غير صحيح" ForeColor="Red" CssClass="validation" meta:resourcekey="RegularExpressionValidator3Resource1"></asp:RegularExpressionValidator>  
             </td>
         </tr>

          <tr>   
               <td class="auto-style61"></td>
              
               <td class="auto-style59"></td>
         <td style="text-align:right" class="auto-style62">
             <br />
             <asp:Label runat="server" Text="    الموقع" Font-Size="Medium"  CssClass="textstyle"  ForeColor="GrayText" Font-Bold="True" meta:resourcekey="LabelResource16"></asp:Label>
               <br /><div style="align-content:center;margin-top:5px;"> 
                    <table align="center">
                    <tr>
                    <td>
                    <asp:Image runat="server" src="images/location.png" height="26px" width="30px" CssClass="auto-style51" meta:resourcekey="ImageResource7"/>
                    </td>
                    <td>
                   <asp:TextBox ID="address" runat="server" Height="26px" Width="217px" BackColor="White" CssClass="edittextpading" meta:resourcekey="addressResource1"></asp:TextBox>   
                    </td>
                        </tr>
                        </table> 
                   </div>
              </td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="address"
                     ErrorMessage="لا يمكن ترك الموقع فارغا" Font-Bold="True" CssClass="validation"
                     SetFocusOnError="True" ForeColor="Red" meta:resourcekey="RequiredFieldValidator3Resource1"><asp:Label runat="server" Text="لا يمكن ترك الموقع فارغا" meta:resourcekey="LabelResource28"></asp:Label>
                  
</asp:RequiredFieldValidator>
                   <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="address" CssClass="validation"
                     ValidationExpression="^[a-zA-Z\\s]+$" Font-Bold="True"
                     ErrorMessage="الموقع غير صحيح ،يجب أن يحتوي على أحرف فقط "
                     ForeColor="Red" meta:resourcekey="RegularExpressionValidator6Resource1" />
               </td>
         </tr>
         <tr>
             <td class="auto-style61"></td>
              <td  colspan="2">
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
       
      
  </div>
     
  <!-- end of content -->
</div>
 <div id="footer_wrapper">
  <div id="footer">

<table align="center" class="auto21">
<tr>
<th colspan="2" class="auto32"><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto66"><asp:Label runat="server" Text=":تواصل معنا" meta:resourcekey="LabelResource17"></asp:Label></h1></th>
<th class="auto34" colspan="3" ><h1 style="font-size: 20px; font-weight: bold; color: black; letter-spacing:normal; text-align:right;" class="auto-style66"><asp:Label runat="server" Text=":تابعونا على"  meta:resourcekey="LabelResource18"></asp:Label></h1></th>
</tr>

<tr>
<td  style="font-size:15px;font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;"><asp:Label CssClass="label" runat="server"  Font-Bold="True" Text="irecycle10@gmail.com " meta:resourcekey="LabelResource11"></asp:Label> <asp:Image runat="server" src="images/email_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource8"/></td>
<td rowspan="4" style="background-color:forestgreen;" ></td>
<td  style="font-size: 15px;font-weight: bold;color: black; text-align:center;" class="auto37"><asp:Image runat="server" src="images/insta_home.png" alt="" align="center" meta:resourcekey="ImageResource9" />
<br/>
<a href="https://www.instagram.com/irecycle__/"><asp:Label runat="server" Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource12"></asp:Label></a>
</td>
<td colspan="2"  style="font-size: 15px;font-weight: bold;color: black;text-align:center;" class="auto-style27"><asp:Image runat="server" src="images/iconfinder_Twitter_Color_1435159.png" alt="" width="25px" height="23px" align="center" meta:resourcekey="ImageResource10"/>
    <br />
<a href="https://twitter.com/@irecycle__"><asp:Label runat="server"  Font-Bold="True" Text=" @irecycle__ " meta:resourcekey="LabelResource13"></asp:Label></a>
</td>
</tr>

<tr>
<td   style="font-size:15px; text-align:right;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto74"><asp:Label runat="server" ForeColor="Black" Font-Bold="True" CssClass="label" Text=" +968 91227827 " meta:resourcekey="LabelResource14"></asp:Label><asp:Image runat="server" src="images/phone_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource11"/><br /></td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto75"><a href="AboutUs.aspx"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text="من نحن" meta:resourcekey="LabelResource15"></asp:Label></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Default.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="الرئيسية" meta:resourcekey="LabelResource19"></asp:Label></a> </td>
<td   style="font-size:15px; text-align:center;font-weight: bold; font-family:'Times New Roman', Times, serif;" class="auto77"><a href="LoginPage.aspx"> <asp:Label runat="server" CssClass="labels" Font-Bold="True" Text="تسجيل الدخول" meta:resourcekey="LabelResource29"></asp:Label></a>
</td>
 <td  class="auto-style38"><uc:LanguageUser runat="server" ID="LanguageUser" /></td></tr>
<tr>
<td  style="font-size: 15px;font-weight: bold;color: black;text-align:right;" class="auto-style30"> <asp:Label runat="server" CssClass="labels"  Font-Bold="True" Text=" Muscat " meta:resourcekey="LabelResource20"></asp:Label>   <asp:Image runat="server" src="images/location_home.png" alt="" width="20px" height="20px" align="center" meta:resourcekey="ImageResource12"/></td>
</tr>
</table>
	<br/>
<h1  style="font-size:15px; font-weight: bold;color: black; font-family:'Times New Roman', Times, serif;text-align:right;" class="auto-style16">
 <asp:Label runat="server" Text=" &amp;#169جميع الحقوق محفوظة  2019  " CssClass="labels" meta:resourcekey="LabelResource31"></asp:Label>     
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
