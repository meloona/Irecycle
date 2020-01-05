using System;

namespace Irecycle
{
    internal class Track
    {
        public string TruckName { get; set; }
        public string CarType { get; set; }
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