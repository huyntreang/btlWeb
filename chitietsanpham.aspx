<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chitietsanpham.aspx.cs" Inherits="BTL_web.chitietsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chi tiết SP</title>
    <link rel="stylesheet" href="../font/fontawesome-free-6.5.1-web/fontawesome-free-6.5.1-web/css/all.min.css" />
    <link rel="stylesheet" href="../CSS/grid.css">
    <link rel="stylesheet" href="../CSS/header.css">
    <link rel="stylesheet" href="../CSS/container.css">
    <link rel="stylesheet" href="../CSS/footer.css">
    <link rel="stylesheet" href="CSS/styleBTL.css">
</head>
<body>
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
                        <a href="" class="cart_icon">
                            <i class="cart_icon-Cart fa-solid fa-cart-shopping"></i>
                            <a href="cart.aspx" style="text-decoration: none; color: #000">Giỏ hàng</a>
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
    <form runat="server">
    <%--CONTAINER--%>
    <div id="container grid">
        <div class="grid wide">
            <div class="row">
                <div class="product">
                    <div class="img-product col l-5 t-5 m-5 c-12"  id="imgProduct" runat="server">
                        <%--<img src="image/Købenstyle Yellow 4 Qt_ Casserole.jpg" >--%> 
                    </div>
                    <div class="product-selectOption l-7 t-7 m-7 c-12" >
                        <div id="infoProduct" runat="server">
                            <%--<h2 class="product-name">Nồi Neoflam Sherbet</h2>--%>
                            <%--<p>Đã bán 152</p>--%>
                            <%--<p>5  <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i>96 đánh giá</p>--%>
                            <%--<h2 style="color: #6891c1">739.000đ</h2>--%>
                        </div>
                        <div>
                            <div class="size">
                                <label for="size">Size</label>
                                <button class="btn1">18cm</button>
                                <button>22cm</button>
                                <button>26cm</button>
                            </div>
                            <div class="color">
                                <label for="color">Màu sắc</label>
                                <button>Xanh lá</button>
                                <button>Hồng</button>
                                <button>Kem</button>
                            </div>
                            <div class="quantity">
                                <label for="quantity">Số lượng</label>
                                <input type="number" style="width: 30px" value="1"/>    123 sản phẩm có sẵn
                            </div>
                            <button id="buy-now">MUA NGAY</button>
                            <div>
                                <asp:Button Text="THÊM VÀO GIỎ HÀNG" OnClick="addProduct_IntoCart" runat="server" style="margin-top: 15px;width: 49.5%;height: 50px;background-color: #b7ddf6;border: none;border-radius: 4%;font-size: 20px;font-weight: bold;"/>
                                <button id="cancel">QUAY LẠI</button>
                            </div>
                        </div>
                </div>
        </div>
        <div class="product-info"> 
            <h2 style="color: #899fb9;">THÔNG TIN SẢN PHẨM</h2>
            <p>Thương hiệu: Neoflam Sherbet</p>
            <p>Bảo hành: 12 tháng</p>
            <p>Size: nhỏ(18 cm), vừa(22 cm), lớn(26 cm)</p>
            <p>Chất liệu: thép không gỉ</p>
            <p><b>Cấu trúc sản phẩm</b></p>
            <p>Thân nồi bằng nhôm tinh khiết đúc nguyên khối , giúp dẫn và giữ nhiệt tối đa trong quá trình sử dụng. Có 6 lớp gồm Xtrema phủ lần lượt lên thân nồi 
                tạo ra lớp chống chống dính siêu bền và siêu chống dính. Đáy từ đinh gán giúp sử dụng tốt trên bếp từ và các loại bếp khác.
            </p>
            <a href="#">Xem thêm...</a>
        </div>
        <div class="product-reviews">
            <h2>ĐÁNH GIÁ SẢN PHẨM</h2>
            <h2>5/5 <i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i><i class="ti-star"></i></h2><p>96 đánh giá</p>
        </div>
        <div class="product-related grid">
            <h2>SẢN PHẨM LIÊN QUAN</h2>
            <div class="grid wide">
                <div class="row">
                    <div class="product-same col l-2-4 t-2-4">
                <img src="image/Essential Enameled Cast Iron Dutch Oven _ Shop Online _ Lodge Cast Iron.jpg">
                <p class="name">Nồi hình trái tim</p>
                <p class="price">1.250.000đ</p>
            </div>
                    <div class="product-same col l-2-4 t-2-4">
                        <img src="image/Retro Sherbet Ceramic Nonstick Stockpot with Glass Lid - 3QT.jpg">
                        <p class="name">Nồi hình trái tim</p>
                        <p class="price">1.250.000đ</p>
                    </div>
                    <div class="product-same col l-2-4 t-2-4">
                        <img src="image/Food and Cooking Gifts_ Great Jones Dutch Baby.jpg">
                        <p class="name">Nồi hình trái tim</p>
                        <p class="price">1.250.000đ</p>
                    </div>
                    <div class="product-same col l-2-4 t-2-4">
                        <img src="image/IKEA - KASTRULL カストルル 鍋 ふた付き, ベージュ, 3 l_ ベージュ.jpg">
                        <p class="name">Nồi hình trái tim</p>
                        <p class="price">1.250.000đ</p>
                    </div>
                    <div class="product-same col l-2-4 t-2-4">
                        <img src="image/Le Creuset Heart Cocotte, 2 qt_ _ Sur La Table.jpg">
                        <p class="name">Nồi hình trái tim</p>
                        <p class="price">1.250.000đ</p>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
    </div>
    </form>
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

    <%--LINK JS--%>
    <script src="../JS/gioHang.js"></script>
</body>
</html>
