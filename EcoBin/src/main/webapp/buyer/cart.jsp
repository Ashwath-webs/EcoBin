<%

String id = request.getParameter("id");

if(id == null){

response.sendRedirect("../products.jsp");
return;

}

String name="";
String image="";
String price="";

switch(id){

case "1":
name="Dell Inspiron Laptop";
image="https://images.unsplash.com/photo-1517336714739-489689fd1ca8?q=80&w=1400&auto=format&fit=crop";
price="₹ 18,500";
break;

case "2":
name="Samsung Galaxy S21";
image="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1400&auto=format&fit=crop";
price="₹ 22,000";
break;

case "3":
name="NVIDIA RTX 3060";
image="https://images.unsplash.com/photo-1591488320449-011701bb6704?q=80&w=1400&auto=format&fit=crop";
price="₹ 32,000";
break;

default:
response.sendRedirect("../products.jsp");
return;

}

%>

<!DOCTYPE html>
<html>

<head>

<title>Shopping Cart</title>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
href="../css/style.css">

</head>

<body class="home-page">

<h1 class="title">
Shopping Cart
</h1>

<div style="
width:90%;
margin:40px auto;
background:rgba(10,15,25,0.82);
padding:40px;
border-radius:30px;
display:flex;
gap:40px;
flex-wrap:wrap;
">

<div style="flex:1; min-width:300px;">

<img src="<%=image%>"
style="
width:100%;
height:420px;
object-fit:cover;
border-radius:24px;
">

</div>

<div style="flex:1; min-width:300px;">

<h1>
<%=name%>
</h1>

<div class="price">
<%=price%>
</div>

<p style="
margin-top:20px;
line-height:2;
color:#d1d5db;
">

Product successfully added to cart.

</p>

<a href="wishlist.jsp?id=<%=id%>"
class="btn">

Move To Wishlist

</a>

</div>

</div>

</body>
</html>