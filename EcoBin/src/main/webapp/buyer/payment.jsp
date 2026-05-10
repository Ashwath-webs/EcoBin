<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

String total =
request.getParameter("cartTotal");

if(total==null || total.equals("")){

total="0";

}

/* CUSTOMER INFO */

String fullname =
request.getParameter("fullname");

String email =
request.getParameter("email");

String phone =
request.getParameter("phone");

String address =
request.getParameter("address");

String city =
request.getParameter("city");

String state =
request.getParameter("state");

String pincode =
request.getParameter("pincode");

String delivery =
request.getParameter("delivery");

%>

<!DOCTYPE html>
<html>

<head>

<title>

Razorpay Payment Gateway

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
background:#f5f7fb;
}

.container{
width:95%;
max-width:1350px;
margin:40px auto;
display:grid;
grid-template-columns:1.2fr 0.8fr;
gap:35px;
}

.left-section{
background:white;
padding:40px;
border-radius:24px;
box-shadow:0 4px 20px rgba(0,0,0,0.08);
}

.right-section{
background:white;
padding:40px;
border-radius:24px;
height:fit-content;
box-shadow:0 4px 20px rgba(0,0,0,0.08);
}

.logo{
display:flex;
align-items:center;
gap:15px;
margin-bottom:35px;
}

.logo img{
width:55px;
}

.logo h1{
font-size:36px;
color:#2563eb;
}

.section-title{
font-size:26px;
margin-bottom:25px;
color:#111827;
}

.payment-options{
display:flex;
flex-direction:column;
gap:18px;
margin-bottom:35px;
}

.option{
border:2px solid #e5e7eb;
padding:20px;
border-radius:18px;
cursor:pointer;
transition:0.3s;
}

.option:hover{
border-color:#2563eb;
background:#eff6ff;
}

.option-title{
font-size:18px;
font-weight:bold;
}

.input-box{
margin-bottom:22px;
}

.input-box label{
display:block;
margin-bottom:10px;
font-weight:bold;
color:#374151;
}

.input-box input,
.input-box select{
width:100%;
padding:16px;
border:1px solid #d1d5db;
border-radius:14px;
font-size:15px;
}

.pay-btn{
width:100%;
padding:18px;
border:none;
border-radius:16px;
background:#2563eb;
color:white;
font-size:20px;
font-weight:bold;
cursor:pointer;
margin-top:20px;
}

.pay-btn:hover{
background:#1d4ed8;
}

.summary-box{
background:#f9fafb;
padding:24px;
border-radius:18px;
margin-bottom:22px;
}

.summary-box h2{
margin-bottom:18px;
font-size:28px;
}

.info{
background:white;
padding:14px;
border-radius:12px;
margin-bottom:12px;
line-height:1.8;
border:1px solid #e5e7eb;
}

.total{
font-size:44px;
font-weight:bold;
color:#22c55e;
margin-top:20px;
}

.secure{
margin-top:25px;
padding:18px;
background:#eff6ff;
border-radius:14px;
text-align:center;
color:#2563eb;
font-weight:bold;
line-height:1.8;
}

@media(max-width:900px){

.container{
grid-template-columns:1fr;
}

}

</style>

<script>

function showForm(type){

document.getElementById("upiForm").style.display="none";
document.getElementById("cardForm").style.display="none";
document.getElementById("netbankingForm").style.display="none";

document.getElementById(type).style.display="block";

}

</script>

</head>

<body>

<div class="container">

<div class="left-section">

<div class="logo">

<img src="https://upload.wikimedia.org/wikipedia/commons/8/89/Razorpay_logo.svg">

<h1>

Razorpay

</h1>

</div>

<h2 class="section-title">

Choose Payment Method

</h2>

<div class="payment-options">

<div class="option"
onclick="showForm('upiForm')">

<div class="option-title">

UPI Payment

</div>

</div>

<div class="option"
onclick="showForm('cardForm')">

<div class="option-title">

Credit / Debit Card

</div>

</div>

<div class="option"
onclick="showForm('netbankingForm')">

<div class="option-title">

Net Banking

</div>

</div>

</div>

<form action="orderPlaced.jsp"
method="post">

<!-- CUSTOMER INFO -->

<input type="hidden"
name="fullname"
value="<%=fullname%>">

<input type="hidden"
name="email"
value="<%=email%>">

<input type="hidden"
name="phone"
value="<%=phone%>">

<input type="hidden"
name="address"
value="<%=address%>">

<input type="hidden"
name="city"
value="<%=city%>">

<input type="hidden"
name="state"
value="<%=state%>">

<input type="hidden"
name="pincode"
value="<%=pincode%>">

<input type="hidden"
name="delivery"
value="<%=delivery%>">

<input type="hidden"
name="amount"
value="<%=total%>">

<div id="upiForm">

<div class="input-box">

<label>

UPI ID

</label>

<input type="text"
placeholder="example@upi">

</div>

</div>

<div id="cardForm"
style="display:none;">

<div class="input-box">

<label>

Card Number

</label>

<input type="text"
placeholder="XXXX XXXX XXXX XXXX">

</div>

<div class="input-box">

<label>

Card Holder Name

</label>

<input type="text"
placeholder="Card Holder Name">

</div>

<div class="input-box">

<label>

CVV

</label>

<input type="password"
placeholder="CVV">

</div>

</div>

<div id="netbankingForm"
style="display:none;">

<div class="input-box">

<label>

Select Bank

</label>

<select>

<option>State Bank of India</option>
<option>HDFC Bank</option>
<option>ICICI Bank</option>
<option>Axis Bank</option>

</select>

</div>

</div>

<button type="submit"
class="pay-btn">

Pay ₹ <%=total%>

</button>

</form>

</div>

<div class="right-section">

<div class="summary-box">

<h2>

Checkout Summary

</h2>

<div class="info">

<b>Customer:</b>
<br>

<%=fullname%>

</div>

<div class="info">

<b>Email:</b>
<br>

<%=email%>

</div>

<div class="info">

<b>Phone:</b>
<br>

<%=phone%>

</div>

<div class="info">

<b>Delivery Address:</b>
<br>

<%=address%>,
<%=city%>,
<%=state%>
-
<%=pincode%>

</div>

<div class="info">

<b>Delivery Type:</b>
<br>

<%=delivery%>

</div>

<div class="total">

₹ <%=total%>

</div>

</div>

<div class="secure">

100% Secure Payments Powered by Razorpay

</div>

</div>

</div>

</body>

</html>