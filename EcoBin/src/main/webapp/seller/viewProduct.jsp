<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

String id=
request.getParameter("id");

List<Map<String,String>> sellerProducts =

(List<Map<String,String>>)
application.getAttribute("sellerProducts");

Map<String,String> product=null;

if(sellerProducts!=null){

for(Map<String,String> p : sellerProducts){

if(id!=null &&
id.equals(p.get("id"))){

product=p;
break;

}

}

}

if(product==null){

response.sendRedirect("manageProducts.jsp");
return;

}

String image=
product.get("image");

if(image==null || image.equals("")){

image=
"https://images.unsplash.com/photo-1517336714739-489689fd1ca8?q=80&w=1200&auto=format&fit=crop";

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

View Product

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
grid-template-columns:1fr 1fr;
gap:40px;
}

.image-section{
background:#111827;
padding:25px;
border-radius:24px;
}

.main-image{
width:100%;
height:500px;
object-fit:cover;
border-radius:20px;
}

.details-section{
background:#111827;
padding:35px;
border-radius:24px;
}

.category{
display:inline-block;
padding:10px 18px;
background:#2563eb;
border-radius:30px;
margin-bottom:20px;
font-size:14px;
font-weight:bold;
}

.details-section h1{
font-size:44px;
margin-bottom:20px;
}

.price{
font-size:40px;
font-weight:bold;
color:#22c55e;
margin-bottom:25px;
}

.description{
line-height:1.9;
color:#cbd5e1;
margin-bottom:30px;
font-size:16px;
}

.spec-grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:18px;
}

.spec-box{
background:#1f2937;
padding:20px;
border-radius:18px;
}

.spec-box h3{
margin-bottom:10px;
color:#22c55e;
font-size:18px;
}

.spec-box p{
color:#cbd5e1;
}

.back-btn{
display:inline-block;
margin-top:35px;
padding:16px 24px;
background:#2563eb;
color:white;
text-decoration:none;
border-radius:14px;
font-weight:bold;
}

@media(max-width:900px){

.container{
grid-template-columns:1fr;
}

.spec-grid{
grid-template-columns:1fr;
}

}

</style>

</head>

<body>

<div class="container">

<div class="image-section">

<img src="<%=image%>"
class="main-image">

</div>

<div class="details-section">

<div class="category">

<%=product.get("category")%>

</div>

<h1>

<%=product.get("name")%>

</h1>

<div class="price">

₹ <%=product.get("price")%>

</div>

<p class="description">

<%=product.get("description")%>

</p>

<div class="spec-grid">

<div class="spec-box">

<h3>

Processor

</h3>

<p>

<%=product.get("processor")%>

</p>

</div>

<div class="spec-box">

<h3>

RAM

</h3>

<p>

<%=product.get("ram")%>

</p>

</div>

<div class="spec-box">

<h3>

Storage

</h3>

<p>

<%=product.get("storage")%>

</p>

</div>

<div class="spec-box">

<h3>

Condition

</h3>

<p>

<%=product.get("condition")%>

</p>

</div>

</div>

<a href="manageProducts.jsp"
class="back-btn">

Back To Manage Products

</a>

</div>

</div>

</body>

</html>