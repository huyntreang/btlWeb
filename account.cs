using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_web
{
    public class account
    {
        private string fullname;
        private string email;
        private string password;

        public account(string fullname, string email, string password)
        {
            this.fullname = fullname;
            this.email = email;
            this.password = password;
        }

        public string Fullname
        {
            get
            {
                return fullname;
            }
            set
            {
                this.fullname = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                this.email = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                this.password = value;
            }
        }
    }
}