using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["account"] = new ArrayList();
            Application["markPage"] = "";
            Application["countProduct"] = new List<string>();
            Application["listProduct"] = new List<sanPham>();
            Application["ids"] = new List<string>();
            List<sanPham> listProduct = new List<sanPham>();

            listProduct.Add(new sanPham("1", "image/sp1.png", "Bát và khay sứ Mikox", "100.000", 157, "100", "157.000", 15));
            listProduct.Add(new sanPham("2", "image/sp2.png", "Chảo chống dính Fring", "120.000", 15, "112", "423.000", 15));
            listProduct.Add(new sanPham("3", "image/sp3.png", "Bộ 12 dao Tomodachi", "210.000", 157, "100", "3.799.000", 15));
            listProduct.Add(new sanPham("4", "image/sp4.png", "Nồi Hadi hình trái tim", "130.000", 157, "100", "1.250.000", 15));
            listProduct.Add(new sanPham("5", "image/sp5.png", "Thớt gỗ hình trái tim Wob", "679.000", 157, "100", "679.000 ", 15));
            listProduct.Add(new sanPham("6", "image/sp6.png", "Bộ 2 dao Smeg", "860.000", 157, "100", "860.000", 15));
            listProduct.Add(new sanPham("7", "image/sp7.png", "Nồi Vio", "950.000", 157, "100", "950.000", 15));
            listProduct.Add(new sanPham("8", "image/sp8.png", "Bộ 4 đĩa Dafo", "720.000", 157, "100", "720.000", 15));
            listProduct.Add(new sanPham("9", "image/sp9.png", "Đèn thả Dekob", "719.000", 157, "100", "719.000", 15));
            listProduct.Add(new sanPham("15", "image/sp10.png", "Chảo điện Bear DLK", "649.000", 157, "100", "649.000", 15));
            listProduct.Add(new sanPham("10", "image/sp11.png", "Đèn thả Mosi", "649.000", 157, "100", "649.000", 10));
            listProduct.Add(new sanPham("11", "image/sp12.png", "Bộ 4 cốc sứ SF", "649.000", 157, "100", "649.000", 10));
            listProduct.Add(new sanPham("12", "image/sp13.png", "Nồi cơm điện KAW", "649.000", 157, "100", "649.000", 10));
            listProduct.Add(new sanPham("13", "image/sp14.png", "Nồi chiên không dầu Bella", "649.000", 157, "100", "649.000", 10));
            listProduct.Add(new sanPham("14", "image/sp15.png", "Dao đầu bếp Zwilling", "649.000", 157, "100", "649.000", 10));

            Application["listProduct"] = listProduct;

            Application["counter"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["logged"] = 0;
            Session.Timeout = 5;
            if (Application["counter"] != null)
            {
                Application.Lock();
                int i = Convert.ToInt32(Application["counter"]);
                Application["counter"] = ++i;
                Application.UnLock();
            }

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if (Application["counter"] != null)
            {
                Application.Lock();
                int i = Convert.ToInt32(Application["counter"]);
                Application["counter"] = --i;
                Application.UnLock();
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}