<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangChu.aspx.cs" Inherits="BTL_web.trangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrangChu</title>
    <link rel="stylesheet" href="CSS/TrangChu.css" />
    <link rel="stylesheet" href="../font/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.min.css" />
    <link rel="stylesheet" href="../CSS/grid.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/container.css">
    <link rel="stylesheet" href="../CSS/footer.css">
</head>
<body>
    <%--<p  id="sp" runat="server"></p>
    <p class="countCart" id="countCart" runat="server"></p>--%>
    <!-- HEADER -->
            <div class="header">
        <div class="grid wide">
            <div class="row">
                <div class="col l-3 m-3 t-3 c-6 ">
                    <div class="logo">
                        <a href=""><img src="../image/logooo.png" alt="logo BeKit"></a>
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
                        <a href="cart.aspx" class="cart_icon">
                            <i class="cart_icon-Cart fa-solid fa-cart-shopping"></i>
                            <span style="text-decoration: none; color: #000">Giỏ hàng</span>
                        </a>
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
                    <i class="fa-solid fa-bars" id="bar_mobile" style="cursor:pointer;"></i>
                </div>
                <!-- thanh search dài -->
                <div class="col l-0 m-0 t-0 c-12 box_search hide">
                    <input type="text" class="input_search" placeholder="Tìm kiếm" />
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

    <%--CONTENTER--%>
    <div class="content grid">
        <div class="grid wide">
            <div class="row">
                <div class="banner col l-12 t-12 m-12 c-12">
                    <img src="image/Banner.png" class="bannerimg" alt="">
                </div>
                <div class="sanPham1">
                    <p>SẢN PHẨM MỚI NHẤT</p>
                    <div class="sanPham  comboCheap-img row" id="row1" runat="server">
                        <%--<div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp1.png" alt="anhsp1">
                            <span class="sp__name">Bát và khay sứ Mikox</span>
                            <br>
                            <span class="sp__price">157.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6"><img class="sp__img" src="image/sp2.png" alt="anhsp2">
                            <span class="sp__name">Chảo chống dính Fring</span>
                            <br>
                            <span class="sp__price">423.000 đ</span></div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6"><img class="sp__img" src="image/sp3.png" alt="anhsp3">
                            <span class="sp__name">Bộ 12 dao Tomodachi</span>
                            <br>
                            <span class="sp__price">3.799.000 đ</span></div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6"><img class="sp__img" src="image/sp4.png" alt="anhsp4">
                            <span6 class="sp__name">Nồi Hadi hình trái tim</span6>
                            <br>
                            <span class="sp__price">1.250.000 đ</span></div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6"><img class="sp__img" src="image/sp5.png" alt="anhsp5">
                            <span class="sp__name">Thớt gỗ hình trái tim Wob</span>
                            <br>
                            <span class="sp__price">679.000 đ</span></div>--%>
                    </div>
                </div>
                <div class="sanPham2">
                    <p>SẢN PHẨM BÁN CHẠY</p>
                    <div class="sanPham comboCheap-img row" id="row2" runat="server">
                        <%--<div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp6.png" alt="anhsp6">
                            <span class="sp__name">Bộ 2 dao Smeg</span>
                            <br>
                            <span class="sp__price">860.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp7.png" alt="anhsp7">
                            <span class="sp__name">Nồi Vio</span>
                            <br>
                            <span class="sp__price">950.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp8.png" alt="anhsp8">
                            <span class="sp__name">Bộ 4 đĩa Dafo</span>
                            <br>
                            <span class="sp__price">720.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp9.png" alt="anhsp9">
                            <span class="sp__name">Đèn thả Dekob</span>
                            <br>
                            <span class="sp__price">719.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp10.png" alt="anhsp10">
                            <span class="sp__name">Chảo điện Bear DLK</span>
                            <br>
                            <span class="sp__price">649.000 đ</span>
                        </div>--%>
                    </div>
                </div>
                <div class="sanPham3">
                    <p>GỢI Ý CHO BẠN</p>
                    <div class="sanPham comboCheap-img row" id="row3" runat="server">
                        <%--<div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp11.png" alt="anhsp11">
                            <span class="sp__name">Đèn thả Mosi</span>
                            <br>
                            <span class="sp__price">510.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp12.png" alt="anhsp12">
                            <span class="sp__name">Bộ 4 cốc sứ SF</span>
                            <br>
                            <span class="sp__price">435.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp13.png" alt="anhsp13">
                            <span class="sp__name">Nồi cơm điện KAW</span>
                            <br>
                            <span class="sp__price">799.000 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp14.png" alt="anhsp14">
                            <span class="sp__name">Nồi chiên không dầu Bella</span>
                            <br>
                            <span class="sp__price">2.999.999 đ</span>
                        </div>
                        <div class="sp comboCheap-img1 col l-2-4 m-4 t-4 c-6">
                            <img class="sp__img" src="image/sp15.png" alt="anhsp15">
                            <span class="sp__name">Dao đầu bếp Zwilling</span>
                    
                            <br>
                            <span class="sp__price">1.699.000 đ</span>
                        </div>--%>
                    </div>
                </div>
                <%--<div class="uudai grid">
                    <div class="row">
                        <div class="col c-4 m-4 l-4 t-4">
                            <img src="image/UuDai.png" alt="">
                        </div>
                        <div class="col c-4 m-4 l-4 t-4">
                            <img src="image/UuDai2.png" alt="">
                        </div>
                        <div class="col c-4 m-4 l-4 t-4">
                            <img src="image/UuDai3.png" alt="">
                        </div>
                    </div>
                </div>--%>
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
    <p class="countAcc" id="countAcc" runat="server"></p>
    <p class="hits" id="hits" runat="server"></p>
    <%--LINK JS--%>
    <script src="../JS/gioHang.js"></script>
</body>
</html>
