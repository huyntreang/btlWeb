using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email, password;
            email = Request.Form["email"];
            password = Request.Form["password"];

            ArrayList accounts = (ArrayList)Application["account"];
            bool check = false;
            if (accounts != null)
            {
                foreach (account a in accounts)
                {
                    if (a.Email == email && a.Password == password)
                    {
                        Session["logged"] = 1;
                        Session["current_user"] = a.Fullname;
                        Response.Write("This is fullname: " + a.Fullname + "\n");
                        Response.Write("This is a email: " + a.Email + "\n");
                        Response.Write("This is a password: " + a.Password);
                        check = true;
                        break;
                    }
                }
                if (!check)
                {
                    Response.Redirect("/HTML/login.html?success=0");
                }
                else
                {
                    Response.Redirect("/HTML/login.html?success=1&markPage="+ Application["markPage"]);
                }
            }
            else
            {
                Response.Redirect("/HTML/login.html?success=0");
            }
        }
    }
 }
