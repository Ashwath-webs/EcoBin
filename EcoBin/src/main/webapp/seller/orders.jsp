<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

List<Map<String,String>> sellerOrders =

(List<Map<String,String>>)
application.getAttribute("sellerOrders");

if(sellerOrders==null){

sellerOrders =
new ArrayList<>();

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

Seller Orders

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
max-width:1500px;
margin:50px auto;
}

.title{
font-size:52px;
margin-bottom:40px;
text-align:center;
}

.grid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:30px;
}

.card{
background:#111827;
border-radius:24px;
overflow:hidden;
transition:0.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card img{
width:100%;
height:240px;
object-fit:cover;
}

.content{
padding:28px;
}

.product-name{
font-size:30px;
font-weight:bold;
margin-bottom:24px;
}

.info{
background:#1f2937;
padding:15px;
border-radius:12px;
margin-bottom:14px;
line-height:1.8;
color:#e5e7eb;
}

.amount{
font-size:38px;
font-weight:bold;
color:#22c55e;
margin:20px 0;
}

.status{
padding:14px;
border-radius:12px;
margin-bottom:14px;
font-weight:bold;
text-align:center;
font-size:16px;
}

.payment{
background:#2563eb;
}

.order{
background:#22c55e;
}

.empty{
background:#111827;
padding:70px;
border-radius:24px;
text-align:center;
}

.empty h2{
font-size:42px;
margin-bottom:20px;
}

.empty p{
font-size:18px;
color:#cbd5e1;
}

@media(max-width:1100px){

.grid{
grid-template-columns:repeat(2,1fr);
}

}

@media(max-width:700px){

.grid{
grid-template-columns:1fr;
}

}

</style>

</head>

<body>

<div class="container">

<h1 class="title">

Seller Orders Dashboard

</h1>

<%

if(sellerOrders.size()==0){

%>

<div class="empty">

<h2>

No Orders Yet

</h2>

<p>

Buyer orders and payment details will appear here.

</p>

</div>

<%

}else{

%>

<div class="grid">

<%

for(Map<String,String> order : sellerOrders){

String amount =
order.get("amount");

if(amount==null || amount.trim().equals("")){

amount="0";

}

String image =
order.get("image");

if(image==null || image.equals("")){

image=
"https://images.unsplash.com/photo-1517336714739-489689fd1ca8?q=80&w=1200&auto=format&fit=crop";

}

%>

<div class="card">

<img src="<%=image%>">

<div class="content">

<div class="product-name">

<%=order.get("productName")%>

</div>

<div class="info">

<b>Product ID:</b>
<br>

<%=order.get("productId")%>

</div>

<div class="info">

<b>Order ID:</b>
<br>

<%=order.get("id")%>

</div>

<div class="info">

<b>Customer Name:</b>
<br>

<%=order.get("fullname")%>

</div>

<div class="info">

<b>Email:</b>
<br>

<%=order.get("email")%>

</div>

<div class="info">

<b>Phone:</b>
<br>

<%=order.get("phone")%>

</div>

<div class="info">

<b>Delivery Address:</b>
<br>

<%=order.get("address")%>,
<%=order.get("city")%>,
<%=order.get("state")%>
-
<%=order.get("pincode")%>

</div>

<div class="info">

<b>Delivery Type:</b>
<br>

<%=order.get("delivery")%>

</div>

<div class="amount">

₹ <%=amount%>

</div>

<div class="status payment">

💳 Payment Received

</div>

<div class="status order">

📦 Order Received

</div>

</div>

</div>

<%

}

%>

</div>

<%

}

%>

</div>

</body>

</html>