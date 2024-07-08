//toggle search
let search = document.querySelector("#search_mobile");
let box_search = document.querySelector(".box_search");

search.onclick = function () {
    box_search.classList.toggle("hide");
}

//toggle bar
let bar = document.querySelector("#bar_mobile");
let menu = document.querySelector(".listMenu");
bar.onclick = function () {
    menu.classList.toggle("open");
}

// toogle user
let user = document.querySelector("#user_mobile");
let account = document.querySelector(".list_acc");
user.onclick = function () {
    account.classList.toggle("hide");
}

//toggle acc
let acc = document.querySelector("#acc");
let info = document.querySelector(".list_accounts");
acc.onclick = function () {
    info.classList.toggle("hide");
}

// dem sl sp gio hang
let amount_of_Product_Cart = document.getElementById('countProduct');
let cartDetails = document.getElementsByClassName('cart_detail');
amount_of_Product_Cart.innerText = "Co " + cartDetails.length+" san pham";