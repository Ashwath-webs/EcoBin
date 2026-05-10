/* =========================================
   EcoBin JavaScript File
========================================= */


/* NAVBAR MOBILE TOGGLE */

function toggleMenu() {

    let nav =
        document.getElementById("navLinks");

    if(nav.style.display === "block") {

        nav.style.display = "none";

    } else {

        nav.style.display = "block";
    }
}


/* FORM VALIDATION */

function validateRegisterForm() {

    let name =
        document.getElementById("name").value;

    let email =
        document.getElementById("email").value;

    let password =
        document.getElementById("password").value;

    if(name === "") {

        alert("Name is required");
        return false;
    }

    if(email === "") {

        alert("Email is required");
        return false;
    }

    if(!email.includes("@")) {

        alert("Enter valid email");
        return false;
    }

    if(password.length < 6) {

        alert("Password must be minimum 6 characters");
        return false;
    }

    return true;
}


/* LOGIN VALIDATION */

function validateLoginForm() {

    let email =
        document.getElementById("loginEmail").value;

    let password =
        document.getElementById("loginPassword").value;

    if(email === "" || password === "") {

        alert("All fields are required");
        return false;
    }

    return true;
}


/* PRODUCT FORM VALIDATION */

function validateProductForm() {

    let productName =
        document.getElementById("product_name").value;

    let category =
        document.getElementById("category").value;

    let price =
        document.getElementById("price").value;

    let quantity =
        document.getElementById("quantity").value;

    if(productName === "") {

        alert("Enter product name");
        return false;
    }

    if(category === "") {

        alert("Enter category");
        return false;
    }

    if(price <= 0) {

        alert("Price must be greater than 0");
        return false;
    }

    if(quantity <= 0) {

        alert("Quantity must be greater than 0");
        return false;
    }

    return true;
}


/* ADD TO CART MESSAGE */

function addToCartMessage() {

    alert("Product added to cart successfully!");
}


/* PAYMENT VALIDATION */

function validatePaymentForm() {

    let cardName =
        document.getElementById("cardName").value;

    let cardNumber =
        document.getElementById("cardNumber").value;

    let expiry =
        document.getElementById("expiry").value;

    let cvv =
        document.getElementById("cvv").value;

    if(cardName === "") {

        alert("Enter card holder name");
        return false;
    }

    if(cardNumber.length !== 16) {

        alert("Card number must be 16 digits");
        return false;
    }

    if(expiry === "") {

        alert("Enter expiry date");
        return false;
    }

    if(cvv.length !== 3) {

        alert("CVV must be 3 digits");
        return false;
    }

    return true;
}


/* SEARCH PRODUCTS */

function searchProducts() {

    let input =
        document.getElementById("searchInput");

    let filter =
        input.value.toLowerCase();

    let cards =
        document.getElementsByClassName("card");

    for(let i = 0; i < cards.length; i++) {

        let title =
            cards[i]
                .getElementsByTagName("h2")[0];

        let text =
            title.textContent ||
            title.innerText;

        if(text.toLowerCase()
            .indexOf(filter) > -1) {

            cards[i].style.display = "";

        } else {

            cards[i].style.display = "none";
        }
    }
}


/* CONFIRM DELETE */

function confirmDelete() {

    return confirm(
        "Are you sure you want to delete this product?"
    );
}


/* AUTO HIDE ALERTS */

setTimeout(function() {

    let alertBox =
        document.getElementById("alertBox");

    if(alertBox) {

        alertBox.style.display = "none";
    }

}, 3000);


/* DARK MODE TOGGLE */

function toggleDarkMode() {

    document.body.classList.toggle("dark-mode");
}


/* LOADER */

function showLoader() {

    let loader =
        document.getElementById("loader");

    if(loader) {

        loader.style.display = "block";
    }
}


/* SCROLL TO TOP */

function scrollToTop() {

    window.scrollTo({
        top:0,
        behavior:'smooth'
    });
}