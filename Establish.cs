using System;

namespace Irecycle
{
    internal class Establish
    {
        public string EstablishName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Retypepassword { get; set; }

        internal bool Read()
        {
            throw new NotImplementedException();
        }
    }
}