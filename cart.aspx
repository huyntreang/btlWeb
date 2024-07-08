<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="BTL_web.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang giỏ hàng</title>
    <link rel="stylesheet" href="../CSS/grid.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/container.css">
    <link rel="stylesheet" href="../CSS/footer.css">
    <link rel="stylesheet" href="../font/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.min.css" />
</head>
<body>
    <%--<p id="countProduct"></p>--%>
         <!-- HEADER -->
    <div class="header">
        <div class="grid wide">
            <div class="row">
                <div class="col l-3 m-3 t-3 c-6 ">
                    <div class="logo">
                        <a href="trangChu.aspx"><img src="../image/logooo.png" alt="logo BeKit"></a>
                        <p>Cho một căn bếp đẹp</p>
                    </div>
                </div>
                <div class="col l-5 m-5 t-5 c-0 navSearch">
                    <div class="search">
                        <input type="text" placeholder="Tìm kiếm...." class="inputSearch">
                        <button class="btnTimKiem">
                            <a href="" class="btnTimKiem_icon">
                                <i class="btnTimKiem_icon-search fa-solid fa-magnifying-glass"></i>
                            </a>
                        </button>
                    </div>
                </div>
                <div class="col l-2 m-2 t-2 c-0">
                    <div class="cart">
                        <span class="cart_icon">
                            <i class="cart_icon-Cart fa-solid fa-cart-shopping"></i>
                            <span>Giỏ hàng</span>
                        </span>
                    </div>
                </div>
                <div class="col l-2 m-2 t-2 c-0">
                    <div class="account">
                        <div class="account_icon" >
                            <i class="account_icon-Class fa-solid fa-user"></i>
                            <span id="NameAccount" runat="server"></span>
                             <i class="fas fa-angle-down arrow_dow" id="acc"></i>
                        </div>
                    <ul class="list_accounts hide">
                            <li class="title_account">
                                <p>
                                   Tài khoản của tôi
                                </p>
                            </li> 
                            <li class="title_account">
                                <a style="text-decoration:none" href="../html/login.html">
                                    Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Mobile -->
                <div class="col l-0 m-0 t-0 c-o-2 options">
                    <a href=""><i class="fa-solid fa-cart-shopping" id="cart_mobile"></i></a>
                    <i class="fa-solid fa-magnifying-glass" id="search_mobile"></i>
                    <i class="fa-solid fa-user" id="user_mobile" style="margin-right: 10px; cursor:pointer;"></i>
                    <i class="fa-solid fa-bars" id="bar_mobile"></i>
                </div>
                <!-- thanh search dài -->
                <div class="col l-0 m-0 t-0 c-12 box_search hide">
                    <input type="text" class="input_search" placeholder="Tìm kiếm">
                    <a href=""><i class="fa-solid fa-magnifying-glass icon_searchMobile"></i></a>
                </div>

                <%--USER--%>
                <ul class="col l-0 m-0 t-0 c-o-6 list_acc hide">
                    <li class="title_account">
                        <p>
                            Tài khoản của tôi
                        </p>
                    </li> 
                    <li class="title_account">
                        <a style="text-decoration:none" href="../html/login.html">
                            Đăng xuất
                        </a>
                    </li>
             </ul>
            </div>
        </div>
    </div>

    <!-- MENU -->
    <div class="menu grid">
        <div class="grid wide menuu">
            <ul class="listMenu row">
                <li class="col l-2 m-2 t-2 c-12 title_product">
                    Dụng cụ nấu ăn
                    <ul class="all_procduct">
                        <li class="detail_product">Nồi</li>
                        <li class="detail_product">Chảo</li>
                        <li class="detail_product">Bộ nồi</li>
                    </ul>
                </li>
                <li class="col l-2 m-2 t-2 c-12 title_product">
                    Dao kéo
                    <ul class="all_procduct">
                        <li class="detail_product">Dao</li>
                        <li class="detail_product">Kéo</li>
                        <li class="detail_product">Dụng cụ mài</li>
                    </ul>
                </li>
                <li class="col l-2 m-2 t-2 c-12 title_product">
                    Phụ kiện làm bếp
                    <ul class="all_procduct">
                        <li class="detail_product">Thớt</li>
                        <li class="detail_product">Dụng cụ vắt cam</li>
                        <li class="detail_product">Dụng cụ đánh trứng</li>
                        <li class="detail_product">Muôi</li>
                        <li class="detail_product">Xẻng múc, kẹp gắp</li>
                    </ul>
                </li>
                <li class="col l-2 m-2 t-2 c-12 title_product">
                    Điện gia dụng
                    <ul class="all_procduct">
                        <li class="detail_product">Ấm siêu tốc</li>
                        <li class="detail_product">Lò vi sóng</li>
                        <li class="detail_product">Máy nướng bánh</li>
                        <li class="detail_product">Máy pha cà phê</li>
                        <li class="detail_product">Máy xay sinh tố</li>
                        <li class="detail_product">Nồi chiên không dầu</li>
                        <li class="detail_product">Nồi cơm điện</li>
                        <li class="detail_product">Tủ lạnh</li>
                    </ul>
                </li>
                <li class="col l-2 m-2 t-2 c-12 title_product">
                    Đồ trang trí
                    <ul class="all_procduct">
                        <li class="detail_product">Đèn</li>
                        <li class="detail_product">Tranh, ảnh</li>
                        <li class="detail_product">Bình hoa</li>
                        <li class="detail_product">Đồng hồ trang trí</li>
                        <li class="detail_product">Kệ trang trí</li>
                    </ul>
                </li>
                <li class="col l-2 m-2 t-2 c-12 title_product">
                    Bàn ăn
                    <ul class="all_procduct">
                        <li class="detail_product">Bát, đĩa</li>
                        <li class="detail_product">Đũa, muỗng</li>
                        <li class="detail_product">Cốc, ly</li>
                        <li class="detail_product">Khăn trải bàn</li>
                        <li class="detail_product">Giấy ăn</li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <!-- BODY -->
    <div class="container grid">
        <div class="grid wide">
            <div class="row">
                <div class="content_cart col l-12 m-12 t-12 c-12">
                    <p>Trang chủ > Giỏ hàng</p>
                </div>
                <div class="your_cart col l-12 m-12 t-12 c-12">
                    <h3>GIỎ HÀNG CỦA BẠN</h3>
                </div>
                <div class="main-container grid">
                    <div class="grid wide">
                        <div class="row">
                            <div class="left-container col l-7 m-7 t-12 c-12"  runat="server" id="listCart" >
                                <%--<div class="cart_detail">
                                    <div class="cart_img col l-3 m-3 t-3 c-3">
                                        <img src="../image/bếp_ga_mini-removebg-preview.png" alt="Bếp ga mini">
                                    </div>
                                    <div class="cart_Content col l-5 m-5 t-5 c-5">
                                        <div class="cart_Descrip">
                                            <span>Bếp ga mini Dr.Hows</span>
                                        </div>
                                        <div class="cart_Price">
                                            <span>1.650.000 đ</span>
                                        </div>
                                        <div class="cart_icon">
                                            <span class="reduce_cart">-</span>
                                            <span class="number_cart">1</span>
                                            <span class="add_cart">+</span>
                                        </div>
                                    </div>
                                    <div class="cart_total col l-4 m-4 t-4 c-4">
                                        <div class="totalContent">
                                            Thành tiền
                                        </div>
                                        <div class="totalPrice">
                                            1.650.000 đ
                                        </div>
                                        <div class="totalDelete">
                                            <img src="../image/btnXoa.png" alt="icon xóa">
                                            <span class="btnXoa">Xóa</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="cart_detail2">
                                    <div class="cart_img2 col l-3 m-3 t-3 c-3">
                                        <img src="../image/thớt tre.png" alt="Thớt tre">
                                    </div>

                                    <div class="cart_Content col l-5 m-5 t-5 c-5">
                                        <div class="cart_Descrip">
                                            <span>Thớt tre Ecohub</span>
                                        </div>
                                        <div class="cart_Price">
                                            <span>378.000 đ</span>
                                        </div>
                                        <div class="cart_icon">
                                            <span class="reduce_cart">-</span>
                                            <span class="number_cart">1</span>
                                            <span class="add_cart">+</span>
                                        </div>
                                    </div>

                                    <div class="cart_total col l-4 m-4 t-4 c-4">
                                        <div class="totalContent">
                                            Thành tiền
                                        </div>
                                        <div class="totalPrice">
                                            378.000 đ
                                        </div>
                                        <div class="totalDelete">
                                            <img src="../image/btnXoa.png" alt="icon xóa">
                                            <span class="btnXoa">Xóa</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="cart_detail3">
                                    <div class="cart_img3 col l-3 m-3 t-3 c-3">
                                        <img src="../image/ấm_siêu_tốc-removebg-preview.png" alt="Bếp ga mini">
                                    </div>

                                    <div class="cart_Content col l-5 m-5 t-5 c-5">
                                        <div class="cart_Descrip">
                                            <span>Ấm siêu tốc KitchenAid</span>
                                        </div>
                                        <div class="cart_Price">
                                            <span>2.350.000 đ</span>
                                        </div>
                                        <div class="cart_icon">
                                            <span class="reduce_cart">-</span>
                                            <span class="number_cart">1</span>
                                            <span class="add_cart">+</span>
                                        </div>
                                    </div>

                                    <div class="cart_total col l-4 m-4 t-4 c-4">
                                        <div class="totalContent">
                                            Thành tiền
                                        </div>
                                        <div class="totalPrice">
                                            2.350.000 đ
                                        </div>
                                        <div class="totalDelete">
                                            <img src="../image/btnXoa.png" alt="icon xóa">
                                            <span class="btnXoa">Xóa</span>
                                        </div>
                                    </div>--%>
                            </div> 
                            <div class="right-container col l-5 m-5 t-12 c-12">
                                <div class="right-container-Top">
                                    <b><p class="col l-o-4 m-o-3 t-o-4 c-o-4">Thông tin đơn hàng</p></b>
                                    <div class="count-Procduct" style="display:flex; margin-top: 32px;">
                                        <span class="count-Procduct-left l-o-1 m-o-1 t-o-1 c-o-1">Tổng số sản phẩm:</span>
                                        <span class="count-Procduct-right l-o-5 m-o-5 t-o-7 c-o-6" id="count" runat="server"></span>
                                    </div>
                                    <div class="totalMoney">
                                        <span class="totalMoney-left l-o-1 m-o-1 t-o-1 c-o-1">Tổng tiền( sau khi giảm 10%):</span>
                                        <span class="totalMoney-right l-o-5 m-o-5 t-o-7 c-o-6" id="totalPrice" runat="server">4.378.000 đ</span>
                                    </div>
                                </div>

                                <div class="right-container-buttom">
                                    <a type="button" class="buyMore" href="trangChu.aspx" style="text-decoration:none; color: #000">MUA THÊM</a>
                                    <button type="button" class="orderProduct">ĐẶT HÀNG</button>
                                </div>

                                <%--GHI CHÚ CHO ĐƠN HÀNG--%>
                                <%--<div class="takenote_yourCart">
                                    <div class="takenote_yourCart-title">
                                        <span>Ghi chú cho đơn hàng</span>
                                    </div>
                                    <div class="takenote_yourCart-content">
                                        <textarea name="" id="" cols="70" rows="13"></textarea>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                </div>
                </div>

            </div>
                <div class="comboCheap">
                    <div class="comboCheap-text col l-12 m-12 t-12 c-12">
                        <p>COMBO ƯU ĐÃI</p>
                    </div>

                    <div class="comboCheap-img row">
                        <div class="comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <a href="">
                                <img src="../image/chao24.png" alt="Chảo chống dính">
                            </a>
                            <div class="comboCheap-content">
                                <a href=""><p>Chảo chống dính Fring</p></a>
                                <span>423.000 đ</span>
                            </div>
                        </div>

                        <div class="comboCheap-img2 col l-2-4 m-4 t-4 c-6">
                            <a href="">
                                <img src="../image/chao chong dinh flam.png" alt="Chảo chống dính Flam">
                            </a>
                            <div class="comboCheap-content">
                                <a href=""><p>Chảo chống dính Flam</p></a>
                                <span>899.000 đ</span>
                            </div>
                        </div>

                        <div class="comboCheap-img3 col l-2-4 m-4 t-4 c-6">
                            <a href="">
                                <img src="../image/sp10.png" alt="Ấm siêu tốc Swan">
                            </a>
                            <div class="comboCheap-content">
                                <a href=""><p>Ấm siêu tốc Swan</p></a>
                                <span>1.799.000 đ</span>
                            </div>
                        </div>

                        <div class="comboCheap-img4 col l-2-4 m-4 t-4 c-6">
                            <a href="">
                                <img src="../image/nồi cơm điện.png" alt="Nồi cơm điện KAW">
                            </a>
                            <div class="comboCheap-content">
                                <a href=""><p>Nồi cơm điện KAW</p></a>
                                <span>799.000 đ</span>
                            </div>
                        </div>

                        <div class="comboCheap-img5 col l-2-4 m-4 t-4 c-6">
                            <a href="">
                                <img src="../image/nồi màu hồng.png" alt="Nồi cơm điện KAW">
                            </a>
                            <div class="comboCheap-content">
                                <a href=""><p>Nồi cơm điện KAW</p></a>
                                <span>799.000 đ</span>
                            </div>
                        </div>
                    </div>
                </div>
     </div>

    <!-- FOOTER -->
    <div class="footer grid">
        <div class="grid wide">
            <div class="row">
                <!-- <div class="footer-content"> -->
                <div class="footer-content-contact col l-3 m-3 t-6 c-6">
                    <a href=""><img src="../image/logooo.png" alt="logo"></a>
                    <p>Cho một căn bếp đẹp</p>
                    <div class="contactInfor">
                        <span class="lienHe">Thông tin liên hệ</span>
                        <div class="footer-content-contactCall">
                            <img src="../image/call icon.png" alt="icon call">
                            <span>1900 1356</span>
                        </div>
                        <div class="footer-content-contactMail">
                            <img src="../image/icon mail.png" alt="icon mail">
                            <span>bekit@gmail.com</span>
                        </div>
                        <div class="footer-content-contactIcon">
                            <img src="../image/insta.png" alt="insta icon">
                            <img src="../image/fbb.png" alt="facebook icon">
                            <img src="../image/mess.png" alt="mess icon">
                            <img src="../image/locket.png" alt="locket icon">
                        </div>
                    </div>
                </div>

                <div class="footer-content-listProduct col l-3 m-3 t-6 c-6">
                    <p>Danh mục</p>
                    <ul>
                        <li>Dụng cụ nấu ăn</li>
                        <li>Dao, kéo</li>
                        <li>Phụ kiện làm bếp</li>
                        <li>Điện gia dụng</li>
                        <li>Đồ trang trí</li>
                        <li>Bàn ăn</li>
                    </ul>
                </div>

                <div class="footer-content-Support col l-3 m-3 t-6 c-6">
                    <p>Hỗ trợ</p>
                    <ul>
                        <li>Chính sách đổi trả hàng</li>
                        <li>Chính sách vận chuyển</li>
                        <li>Chính sách bảo mật</li>
                        <li>HDSD &Bảo hành</li>
                        <li>Điều khoản sử dụng</li>
                    </ul>
                </div>

                <div class="footer-content-AboutBekit col l-3 m-3 t-6 c-6">
                    <p>Về Bekit</p>
                    <ul>
                        <li>Giới thiệu về BeKit</li>
                        <li>Tuyển dụng</li>
                        <li>Tin tức - Sự kiện</li>
                        <li>Hệ thống cửa hàng BeKit</li>
                    </ul>
                </div>
                <!-- </div> -->
            </div>
        </div>
    </div>
    <!-- link JS -->
    <script src="../JS/gioHang.js"></script>
</body>
</html>
