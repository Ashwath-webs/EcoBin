<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

List<Map<String,String>> wishlist =

(List<Map<String,String>>)
session.getAttribute("wishlist");

if(wishlist==null){

wishlist=
new ArrayList<>();

session.setAttribute(
"wishlist",
wishlist
);

}

String id=
request.getParameter("id");

String name=
request.getParameter("name");

String price=
request.getParameter("price");

String image=
request.getParameter("image");

if(id!=null && name!=null){

boolean exists=false;

for(Map<String,String> item : wishlist){

if(item.get("id")!=null &&
item.get("id").equals(id)){

exists=true;
break;

}

}

if(!exists){

Map<String,String> item=
new HashMap<>();

item.put("id",id);

item.put("name",name);

item.put("price",price);

item.put("image",image);

wishlist.add(item);

}

}

double total=0;

for(Map<String,String> item : wishlist){

String priceStr=
item.get("price");

if(priceStr==null ||
priceStr.trim().equals("")){

priceStr="0";

}

priceStr=
priceStr.replace("₹","")
.replace(",","")
.trim();

try{

total+=
Double.parseDouble(priceStr);

}catch(Exception e){

total+=0;

}

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

Wishlist

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
max-width:1400px;
margin:50px auto;
}

.title{
font-size:46px;
margin-bottom:40px;
text-align:center;
}

.wishlist-grid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:30px;
}

.card{
background:#111827;
border-radius:24px;
overflow:hidden;
}

.card img{
width:100%;
height:240px;
object-fit:cover;
}

.content{
padding:22px;
}

.content h2{
margin-bottom:15px;
font-size:24px;
}

.price{
font-size:28px;
font-weight:bold;
color:#22c55e;
margin-bottom:20px;
}

.buttons{
display:flex;
flex-direction:column;
gap:12px;
}

.buttons a{
padding:14px;
text-align:center;
text-decoration:none;
border-radius:14px;
font-weight:bold;
}

.remove-btn{
background:#ef4444;
color:white;
}

.payment-btn{
background:#22c55e;
color:white;
}

.summary{
margin-top:50px;
background:#111827;
padding:35px;
border-radius:24px;
}

.summary h2{
font-size:34px;
margin-bottom:20px;
}

.total{
font-size:38px;
font-weight:bold;
color:#22c55e;
margin-bottom:25px;
}

.checkout-btn{
display:block;
padding:18px;
background:#2563eb;
color:white;
text-align:center;
text-decoration:none;
border-radius:16px;
font-size:18px;
font-weight:bold;
}

.empty{
background:#111827;
padding:60px;
border-radius:24px;
text-align:center;
}

.empty h2{
font-size:36px;
margin-bottom:20px;
}

.empty p{
color:#cbd5e1;
margin-bottom:25px;
}

.shop-btn{
display:inline-block;
padding:16px 24px;
background:#22c55e;
color:white;
text-decoration:none;
border-radius:14px;
font-weight:bold;
}

@media(max-width:1100px){

.wishlist-grid{
grid-template-columns:repeat(2,1fr);
}

}

@media(max-width:700px){

.wishlist-grid{
grid-template-columns:1fr;
}

}

</style>

</head>

<body>

<div class="container">

<h1 class="title">

My Wishlist

</h1>

<%

if(wishlist.size()==0){

%>

<div class="empty">

<h2>

Wishlist Empty

</h2>

<p>

Add products from marketplace to continue shopping.

</p>

<a href="../products.jsp"
class="shop-btn">

Go To Marketplace

</a>

</div>

<%

}else{

%>

<div class="wishlist-grid">

<%

for(Map<String,String> item : wishlist){

String img=
item.get("image");

if(img==null || img.equals("")){

img=
"https://images.unsplash.com/photo-1517336714739-489689fd1ca8?q=80&w=1200&auto=format&fit=crop";

}

String priceStr=
item.get("price");

if(priceStr==null ||
priceStr.trim().equals("")){

priceStr="0";

}

priceStr=
priceStr.replace("₹","")
.replace(",","")
.trim();

double productPrice=0;

try{

productPrice=
Double.parseDouble(priceStr);

}catch(Exception e){

productPrice=0;

}

%>

<div class="card">

<img src="<%=img%>">

<div class="content">

<h2>

<%=item.get("name")%>

</h2>

<div class="price">

₹<%=String.format("%,.0f",
productPrice)%>

</div>

<div class="buttons">

<a href="#"
class="remove-btn">

Remove

</a>

<a href='payment.jsp?buyNow=true&id=<%=item.get("id")%>&name=<%=java.net.URLEncoder.encode(item.get("name"),"UTF-8")%>&price=<%=java.net.URLEncoder.encode(priceStr,"UTF-8")%>&image=<%=java.net.URLEncoder.encode(img,"UTF-8")%>'
class="payment-btn">

Buy Now

</a>

</div>

</div>

</div>

<%

}

%>

</div>

<div class="summary">

<h2>

Order Summary

</h2>

<div class="total">

Total: ₹<%=String.format("%,.0f",
total)%>

</div>

<a href='checkout.jsp?cartTotal=<%=total%>'
class="checkout-btn">

Checkout

</a>

</div>

<%

}

%>

</div>

</body>

</html>