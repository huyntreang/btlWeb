using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_web
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fullname, email, password;
            fullname = Request.Form["fullname"];
            email = Request.Form["email"];
            password = Request.Form["password"];

            if (fullname != null && email != null && password != null)
            {
                account account = new account(fullname, email, password);
                if (Application["account"] == null)
                {
                    List<account> listAccount = new List<account>();
                    listAccount.Add(account);
                    Application["account"] = listAccount;
                }
                else
                {
                    ArrayList accounts = (ArrayList)Application["account"];
                    accounts.Add(account);
                    Application["account"] = accounts;
                }
                Response.Redirect("/HTML/login.html");
            }
        }
    }
}