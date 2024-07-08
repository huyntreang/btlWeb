using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
namespace BTL_web
{
    public partial class chitietsanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["markPage"] = "chitietsanpham";
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
            //display Information Product detail follow id
            List<sanPham> listProduct = new List<sanPham>();
            listProduct = (List<sanPham>)Application["listProduct"];

            sanPham detailProduct = new sanPham();
            //get id from url
            string id = Request.QueryString["id"];
            foreach (sanPham sp in listProduct)
            {
                if (sp.Id == id)
                {
                    detailProduct = sp;
                    break;
                }
            }

            //render
            string htmlImgProduct = $"<image style='width:100%; height: 92%;' src='{detailProduct.Img}'/>";
            imgProduct.InnerHtml = htmlImgProduct;
            string htmlInfoProduct = $"<h2 class='product - name'>{detailProduct.NamePro}</h2><p>Đã bán : {detailProduct.SLBan}</p><p>5<i class='ti - star'></i><i class='ti - star'></i><i class='ti - star'></i><i class='ti - star'></i><i class='ti - star'></i>{detailProduct.Comment} đánh giá</p><h2 style='color: #6891c1'>{detailProduct.Price}đ</h2>";
            infoProduct.InnerHtml = htmlInfoProduct;
        }
        protected void addProduct_IntoCart(object sender, EventArgs e)
        {

            Session["id"] = "";
            string id = Request.QueryString["id"];
            Session["id"] = id;

            Response.Redirect("cart.aspx");

        }
    }
}