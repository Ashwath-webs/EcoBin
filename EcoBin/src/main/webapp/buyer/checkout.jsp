<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

String total =
request.getParameter("cartTotal");

if(total==null || total.equals("")){

total="0";

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

Checkout

</title>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{
background:#0f172a;
color:white;
}

.container{
width:92%;
max-width:1300px;
margin:50px auto;
display:grid;
grid-template-columns:1.1fr 0.9fr;
gap:35px;
}

.left-section{
background:#111827;
padding:40px;
border-radius:26px;
}

.right-section{
background:#111827;
padding:40px;
border-radius:26px;
height:fit-content;
}

.title{
font-size:42px;
margin-bottom:35px;
}

.section-title{
font-size:24px;
margin-bottom:25px;
color:#22c55e;
}

.input-box{
margin-bottom:22px;
}

.input-box label{
display:block;
margin-bottom:10px;
font-size:16px;
font-weight:bold;
}

.input-box input,
.input-box textarea,
.input-box select{
width:100%;
padding:16px;
border:none;
border-radius:14px;
background:#1f2937;
color:white;
font-size:15px;
}

textarea{
resize:none;
height:120px;
}

.summary-box{
background:#1f2937;
padding:22px;
border-radius:18px;
margin-bottom:20px;
}

.summary-box h2{
margin-bottom:15px;
font-size:24px;
}

.total{
font-size:42px;
font-weight:bold;
color:#22c55e;
margin-top:15px;
}

.payment-info{
line-height:2;
font-size:16px;
color:#d1d5db;
}

.checkout-btn{
display:block;
width:100%;
padding:18px;
background:#2563eb;
border:none;
border-radius:16px;
color:white;
font-size:18px;
font-weight:bold;
cursor:pointer;
margin-top:20px;
}

.checkout-btn:hover{
background:#1d4ed8;
}

.secure{
margin-top:25px;
padding:18px;
background:#172554;
border-radius:16px;
text-align:center;
line-height:1.8;
color:#bfdbfe;
}

@media(max-width:900px){

.container{
grid-template-columns:1fr;
}

}

</style>

</head>

<body>

<div class="container">

<div class="left-section">

<h1 class="title">

Checkout Details

</h1>

<form action="payment.jsp"
method="get">

<input type="hidden"
name="cartTotal"
value="<%=total%>">

<div class="section-title">

Customer Information

</div>

<div class="input-box">

<label>

Full Name

</label>

<input type="text"
name="fullname"
placeholder="Enter Full Name"
required>

</div>

<div class="input-box">

<label>

Email Address

</label>

<input type="email"
name="email"
placeholder="Enter Email"
required>

</div>

<div class="input-box">

<label>

Phone Number

</label>

<input type="text"
name="phone"
placeholder="Enter Phone Number"
required>

</div>

<div class="section-title">

Delivery Address

</div>

<div class="input-box">

<label>

Address

</label>

<textarea
name="address"
placeholder="Enter Delivery Address"
required></textarea>

</div>

<div class="input-box">

<label>

City

</label>

<input type="text"
name="city"
placeholder="Enter City"
required>

</div>

<div class="input-box">

<label>

State

</label>

<input type="text"
name="state"
placeholder="Enter State"
required>

</div>

<div class="input-box">

<label>

Pincode

</label>

<input type="text"
name="pincode"
placeholder="Enter Pincode"
required>

</div>

<div class="input-box">

<label>

Delivery Type

</label>

<select name="delivery">

<option>Standard Delivery</option>
<option>Express Delivery</option>
<option>Same Day Delivery</option>

</select>

</div>

<button type="submit"
class="checkout-btn">

Proceed To Payment

</button>

</form>

</div>

<div class="right-section">

<div class="summary-box">

<h2>

Order Summary

</h2>

<div class="payment-info">

✔ Secure Checkout
<br>

✔ Fast Delivery
<br>

✔ Safe Payment Gateway
<br>

✔ Eco-Friendly Packaging

</div>

<div class="total">

₹ <%=total%>

</div>

</div>

<div class="secure">

Your personal information and payment details are securely encrypted and protected.

</div>

</div>

</div>

</body>

</html>