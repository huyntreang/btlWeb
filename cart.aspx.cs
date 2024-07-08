using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_web
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["markPage"] = "cart";
            //this list to add all id in array to handle dupplicate
            List<string> ids = (List<string>)Application["ids"];
            //check user logged
            if (Session["logged"].ToString() == "1")
            {
                //handle render name account
                string username = Session["current_user"].ToString();
                NameAccount.InnerText = username;
                if (Session["id"].ToString() != "")
                {
                    //get id from Session["id"]
                    string id = Session["id"].ToString();
                    ids.Add(id);
                }

                // caculate total money
                long total = 0;
                long totalProduct = 0;
                int chotSL = 0;

                //this list to filter id already in array
                List<string> ListIdChecked = new List<string>();
                

                //this list contain all product
                List<sanPham> listproduct = (List<sanPham>)Application["listproduct"];

                string html = "";
                string html2 = "";
                for (int i = 0; i < ids.Count; i++)
                {
                    string idCount = ids[i];
                    if (ListIdChecked.Contains(idCount))
                    {
                        continue;
                    }
                    else
                    {
                        //Đếm số lượng sp trùng = cách lấy hết id trùng chuyển về mảng và đếm só lượng mảng đó
                        //frequency idCount in array ids
                        int soLuongId = ids.Where((idCheck) => idCheck == idCount).ToArray().Length;
                        ListIdChecked.Add(idCount);
                        foreach (sanPham sp in listproduct)
                        {
                            if (sp.Id == idCount)
                            {
                                //assign frequency of id in array ids with amount's product
                                sp.SLBan = soLuongId;
                                //render
                                //html += "<div class='left - container col l-7 m - 7 t - 12 c - 12'>";
                                html += "<div class='cart_detail'>";
                                html += "<div class='cart_img col l-3 m-3 t-3 c-3'>";
                                html += $"<img src='{sp.Img}' alt='{sp.NamePro}'/>";
                                html += "</div>";
                                html += "<div class='cart_Content col l-5 m-5 t-5 c-5'>";
                                html += "<div class='cart_Descrip'>";
                                html += $"<span>{sp.NamePro}</span>";
                                html += "</div>";
                                html += "<div class='cart_Price'>";
                                html += $"<span>{sp.Price} đ</span>";
                                html += "</div>";
                                html += "<div class='cart_icon'>";
                                //html += "<span class='reduce_cart'>" + '-' + "</span>";
                                html += $"<a style='text-decoration:none; color: #000;' href='giamSLSPGioHang.aspx?id={sp.Id}'><span class='reduce_cart'>" + '-' + "</span></a>";
                                html += $"<span class='number_cart'>{sp.SLBan}</span>";
                                //html += "<span class='add_cart'>" + '+' + "</span>";
                                html += $"<a style='text-decoration:none; color: #000;' href='tangSLSPGioHang.aspx?id={sp.Id}'><span class='add_cart'>" + '+' + "</span></a>";
                                html += "</div>";
                                html += "</div>";
                                html += "<div class='cart_total col l-4 m-4 t-4 c-4'>";
                                html += $"<div class='totalContent'>Thành tiền</div>";
                                html += $"<div class='totalPrice'>{sp.Price}</div> ";
                                html += "<div class='totalDelete'>";
                                html += "<img src = '../image/btnXoa.png' alt='icon xóa'>";
                                html += "<span class='btnXoa'>Xóa</span>";
                                html += "</div>";
                                html += "</div>";
                                html += "</div>";

                                //html += "<div class='right-container-Top'>";
                                //html += "<b><p class='col l-o-4 m-o-3 t-o-4 c-o-4'>Thông tin đơn hàng</p></b>";
                                //html += "<div class='count-Procduct'>";
                                //html += "<span class='count-Procduct-left l-o-1 m-o-1 t-o-1 c-o-1'>Tổng số sản phẩm:</span>";
                                //html += $"<span class='count-Procduct-right l-o-5 m-o-5 t-o-7 c-o-6'>{sp.SLBan}</span>";
                                //html += "</div>";
                                //html += "<div class='totalMoney'>";
                                //html += "<span class='totalMoney-left l-o-1 m-o-1 t-o-1 c-o-1'>Tạm tính:</span>";
                                //html += $"<span class='totalMoney-right l-o-5 m-o-5 t-o-7 c-o-6'>{int.Parse(sp.Price, NumberStyles.AllowDecimalPoint) * sp.SLBan}.000đ</span>";
                                //html += "</div>";
                                //html += "</div>";

                                //html2 += $"<span class='count-Procduct-right l-o-5 m-o-5 t-o-7 c-o-6'>"+ chotSL + "</span>";
                                int giamGia = int.Parse(sp.Price, NumberStyles.AllowDecimalPoint) * sp.SLBan - sp.GiamGia;
                                total += int.Parse(sp.Price, NumberStyles.AllowDecimalPoint) * sp.SLBan - sp.GiamGia ;
                                totalProduct += sp.SLBan;
                                chotSL = (int)totalProduct; 
                            }
                        }
                    }
                }
                listCart.InnerHtml = html;
                totalPrice.InnerText = total + ".000 đ";
                count.InnerText += chotSL;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}