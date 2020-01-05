using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;




namespace Irecycle
{
    public partial class LoginPage : BasePage
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Xn1GMO1JrhsfK2NLCoNLDFSc1k7mGKTHPA17ZBjc",
            BasePath = "https://irecycle-d8cc6.firebaseio.com/"
        };
        
           
        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            divfor.Visible = false;
            client = new FireSharp.FirebaseClient(config);

            pass.Attributes.Add("placeholder", GetLocalResourceObject("passResource1").ToString());
            username.Attributes.Add("placeholder", GetLocalResourceObject("usernameResource1").ToString());
        }

        protected  void Forget_Password(object sender, EventArgs e)
        {

            divfor.Visible = true;
            divexm.Visible = false;

        }

        protected async  void Register_Click(object sender, EventArgs e)
        {


            if (pass.Text == "" || username.Text == "")
            {
                message.Visible = true;
                message.Text = GetLocalResourceObject("errormessage").ToString();

            }
            else
            {

                int i = 0;
                FirebaseResponse respo = await client.GetAsync("counter");
                Counter_class get = respo.ResultAs<Counter_class>();
                int cnt = Convert.ToInt32(get.cnt);
                while (true)
                {
                    if (i == cnt)
                    {
                        break;
                    }
                    i++;
                    try
                    {
                        FirebaseResponse response = await client.GetAsync("user/" + i);

                        Data da = response.ResultAs<Data>();


                        string user = da.Username;
                        string type = da.RegisterType;
                        string state = da.RegisterState;
                        string password = Decrypt(da.Password.Trim());


                        if (username.Text == user && pass.Text == password)
                        {

                           
                            if (type == "Admin")
                            {
                                Response.Redirect("AdminDefault.aspx", false);
                            }

                            if (type == "Estaplished")
                            {
                                Session["FirstName"] = username.Text;
                                Response.Redirect("CustomerDefault.aspx", false);
                            }

                            if (type == "Company")
                            {
                                if (state == "قيد المراجعة")
                                {
                                    message.Visible = true;
                                    message.Text = "ليس لديك صلاحية بالدخول";
                                }
                                else
                                {
                                    Session["FirstName"] = username.Text;
                                    Response.Redirect("CompanyDefault.aspx", false);
                                }

                            }
                            if (type == "Truck")
                            {
                                if (state == "قيد المراجعة")
                                {
                                    message.Visible = true;
                                    message.Text = "ليس لديك صلاحية بالدخول";
                                }
                                else
                                {
                                    Session["FirstName"] = username.Text;
                                    Response.Redirect("TruckDefault.aspx", false);
                                }

                            }

                        }

                        else
                        {
                            message.Visible = true;
                            message.Text = "اسم المستخدم أو كلمة المرور خاطئة الرجاء التحقق";
                        }


                    }
                    catch
                    {

                    }
                }
            }

        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

       
        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        protected async void Forget_Click(object sender, EventArgs e)
        {
            if (fname.Text == "")
            {

                Label2.Visible = true;
                Label2.Text = GetLocalResourceObject("errormessage1").ToString();
                divfor.Visible = true;
                divexm.Visible = false;

            }
            else
            {
                Label2.Visible = false;
                int i = 0;
                FirebaseResponse respo = await client.GetAsync("counter");
                Counter_class get = respo.ResultAs<Counter_class>();
                int cnt = Convert.ToInt32(get.cnt);
                while (true)
                {
                    if (i == cnt)
                    {
                        break;
                    }
                    i++;
                    try
                    {
                        FirebaseResponse response = await client.GetAsync("user/" + i);

                        Data da = response.ResultAs<Data>();
                        string user = da.Username;
                        string email = da.Email;
                        string password = Decrypt(da.Password.Trim());
                        if (fname.Text == user)
                        {
                            string smtpAddress = "smtp.live.com";
                            int portNumber = 587;
                            bool enableSSL = true;


                            string emailFrom = "irecycle.web@hotmail.com";
                            string emailPassword = "Queen!23";
                            string emailTo = email;
                            string subject = "Forget Password";
                            string body = "your password is:" + password;
                            using (MailMessage Forget = new MailMessage())
                            {
                                Forget.From = new MailAddress(emailFrom);
                                Forget.To.Add(emailTo);
                                Forget.Subject = subject;
                                Forget.Body = body;
                                Forget.IsBodyHtml = false;
                                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                                {
                                    smtp.Credentials = new NetworkCredential(emailFrom, emailPassword);
                                    smtp.EnableSsl = enableSSL;
                                    smtp.Send(Forget);
                                    //MessageBox.Show(GetLocalResourceObject("msg1").ToString() + " \n " + GetLocalResourceObject("msg2").ToString());
                                    Response.Write("<script>alert('"+ GetLocalResourceObject("msg1").ToString() + " \n " + GetLocalResourceObject("msg2").ToString() + "')</script>");
                                   Page.ClientScript.RegisterStartupScript(this.GetType(),"Script","<script>alert('"+ GetLocalResourceObject("msg1").ToString() + " \n " + GetLocalResourceObject("msg2").ToString() + "')</script>",true);
                                    divfor.Visible = false;
                                    divexm.Visible = true;
                                }
                            }
                            //divfor.Visible = false;
                            //divexm.Visible = true;
                        }

                    }
                    catch
                    {

                    }
                }

            }

            

        }


    }
}