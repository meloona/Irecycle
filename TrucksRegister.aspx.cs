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

namespace Irecycle
{
    public partial class TrucksRegister : BasePage
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "Xn1GMO1JrhsfK2NLCoNLDFSc1k7mGKTHPA17ZBjc",
            BasePath = "https://irecycle-d8cc6.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);
            date.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected async void Register_Click(object sender, EventArgs e)
        {
            FirebaseResponse respo = await client.GetAsync("counter");
            Counter_class get = respo.ResultAs<Counter_class>();
            string cn = (Convert.ToInt32(get.cnt) + 1).ToString();
            var truck = new Data
            {
                TruckName = TruckName.Text,
                CarType = carname.Text,
                Phone = phone.Text,
                Address = address.Text,
                Username = username.Text,
                Password = this.Encrypt(pass.Text.Trim()),
                Retypepassword = this.Encrypt(repass.Text.Trim()),
                RegisterType = "Truck",
                Date = date.Text,
                RegisterState = "قيد المراجعة"

            };

            SetResponse response = await client.SetAsync("user/" + cn, truck);
            Data result = response.ResultAs<Data>();
            var obj = new Counter_class
            {
                cnt = cn,
            };
            SetResponse response1 = await client.SetAsync("counter", obj);


            string smtpAddress = "smtp.live.com";
            int portNumber = 587;
            bool enableSSL = true;

            string emailFrom = "irecycle.web@hotmail.com";
            string emailPassword = "Queen!23";
            string emailTo = "irecycle.web@gmail.com";
            string subject = "Truck Information";
            string body = "الإسم الثلاثي:" + TruckName.Text + "\n نوع الشاحنه: " + carname.Text + "\n الهاتف:" + phone.Text + "\n الموقع:" + address.Text + "اسم المستخدم\n:" + username.Text + "\n كلمة المرور:" + Encrypt(pass.Text.Trim()) + "\n تأكيد كلمة المرور:" + Encrypt(repass.Text.Trim());

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
                    Response.Redirect("Dialog3.aspx");
                }
            }
           // Response.Redirect("Dialog3.aspx");
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
    }
}