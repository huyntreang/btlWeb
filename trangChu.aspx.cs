using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_web
{
    public partial class trangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["markPage"] = "trangChu";
            List<string> listProductCart = (List<string>)Application["countProduct"];
            ArrayList accounts = (ArrayList)Application["account"];

            countAcc.InnerHtml = "Có " + accounts.Count + " người đã đăng kí!";
            List<sanPham> listproduct = (List<sanPham>)Application["listproduct"];
            //countCart.InnerHtml = "Co " + listproduct.Count + " sp";

            //handle render name account
            if (Session["logged"].ToString() == "1")
            {
                string username = Session["current_user"].ToString();
                NameAccount.InnerText = username;
            }
            else if (Session["logged"].ToString() == "0")
            {
                NameAccount.InnerText = "Tài khoản";
            }
            //handle render list product
            List<sanPham> listProduct = (List<sanPham>)Application["listProduct"];
            string html = "";
            string html2 = "";
            string html3 = "";

            for (int i=0; i< 5; i++)
            {
                sanPham sp = (sanPham)listProduct[i];
                html += "<div class='sp comboCheap-img1 col l-2-4 m-2-4 t-2-4 c-2-4'>";
                html += " <img class='sp__img' src='"+sp.Img+"' alt='anhsp1'>";
                html += $"<a style='display:block; text-decoration: none; font-size:1.2rem; color: #000; margin-bottom:-11px' href='chitietsanpham.aspx?id={sp.Id}' class='name_book'>" + sp.NamePro + "</a>";
                html += "<br>";
                html += "<span class='sp__price'>" + sp.Price + "</span>";
                //html += "<del class='sp__price'>" + sp.Price + "</del>";
                //html += "<span class='sp__price'>" + sp.Price + "</span>";
                html += "</div>";
            }
            row1.InnerHtml = html;

            for (int i = 5; i < 10; i++)
            {
                sanPham sp = (sanPham)listProduct[i];
                html2 += "<div class='sp comboCheap-img1 col l-2-4 m-2-4 t-2-4 c-2-4'>";
                html2 += " <img class='sp__img' src='" + sp.Img + "' alt='anhsp6'>";
                html2 += $"<a style='display:block; text-decoration: none; font-size:1.2rem; color: #000; margin-bottom:-11px' href='chitietsanpham.aspx?id={sp.Id}' class='name_book'>" + sp.NamePro + "</a>";
                html2 += "<br>";
                html2 += "<span class='sp__price'>" + sp.Price + "đ</span>";
                html2 += "</div>";
            }
            row2.InnerHtml = html2;

            for (int i = 10; i < 15; i++)
            {
                sanPham sp = (sanPham)listProduct[i];
                html3 += "<div class='sp comboCheap-img1 col l-2-4 m-2-4 t-2-4 c-2-4'>";
                html3 += " <img class='sp__img' src='" + sp.Img + "' alt='anhsp6'>";
                html3 += $"<a style='display:block; text-decoration: none; font-size:1.2rem; color: #000; margin-bottom:-11px' href='chitietsanpham.aspx?id={sp.Id}' class='name_book'>" + sp.NamePro + "</a>";
                html3 += "<br>";
                html3 += "<span class='sp__price'>" + sp.Price + "</span>";
                html3 += "</div>";
            }
            row3.InnerHtml = html3;

            hits.InnerHtml = "Có" + Application["counter"].ToString() + " người đang truy cập!";
        }
    }
}