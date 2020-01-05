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

namespace Irecycle
{
    public partial class EstablishRegister : BasePage
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
            var estaplish = new Data
            {
               
                EstablishName = estaplishName.Text,
                Email = email.Text,
                Phone = phone.Text,
                Address = address.Text,
                Username = username.Text,
                Date = date.Text,
                Password = this.Encrypt(pass.Text.Trim()),
                Retypepassword = this.Encrypt(repass.Text.Trim()),
                RegisterType = "Estaplished"
            };

            SetResponse response = await client.SetAsync("user/" + cn, estaplish);
            Data result = response.ResultAs<Data>();
            var obj = new Counter_class
            {
                cnt = cn,
            };
            SetResponse response1 = await client.SetAsync("counter", obj);


            FirebaseResponse pcnts = await client.GetAsync("Pointcont");
            Pointcont pcount = pcnts.ResultAs<Pointcont>();
            string pcnt = (Convert.ToInt32(pcount.pcnt) + 1).ToString();
            int a = 0;
            var points = new Point
            {
                ورق = a,
                ألمونيوم = a,
                بلاستك = a,
                حديد = a,
                زجاج = a,
                كرتون = a,
                إطارات = a,
                أخرى = a,
                Username = username.Text
            };
            SetResponse respons = await client.SetAsync("Point/" + pcnt, points);
            Point point = response.ResultAs<Point>();
            var pobj = new Pointcont
            {
                pcnt = pcnt,
            };
            SetResponse presp = await client.SetAsync("Pointcont", pobj);

            Response.Redirect("Dialog2.aspx");
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