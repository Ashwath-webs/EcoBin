<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

String id =
request.getParameter("id");

List<Map<String,String>> products =

(List<Map<String,String>>)
application.getAttribute("products");

Map<String,String> product =
null;

if(products!=null){

for(Map<String,String> p : products){

if(p.get("id").equals(id)){

product=p;
break;

}

}

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

Product Details

</title>

<style>

body{
background:#0f172a;
font-family:Arial;
color:white;
margin:0;
}

.container{
width:90%;
max-width:1200px;
margin:40px auto;
background:#111827;
padding:35px;
border-radius:20px;
}

.image{
width:100%;
height:450px;
object-fit:cover;
border-radius:20px;
margin-bottom:30px;
}

.name{
font-size:42px;
font-weight:bold;
margin-bottom:25px;
}

.info{
background:#1f2937;
padding:18px;
border-radius:14px;
margin-bottom:18px;
line-height:1.8;
}

.price{
font-size:44px;
font-weight:bold;
color:#22c55e;
margin:30px 0;
}

.btn{
display:block;
padding:18px;
background:#2563eb;
color:white;
text-align:center;
text-decoration:none;
border-radius:14px;
font-weight:bold;
font-size:18px;
}

</style>

</head>

<body>

<div class="container">

<%

if(product!=null){

%>

<img src="<%=product.get("image")%>"
class="image">

<div class="name">

<%=product.get("name")%>

</div>

<div class="info">

<b>Category:</b>
<br>

<%=product.get("category")%>

</div>

<div class="info">

<b>Processor:</b>
<br>

<%=product.get("processor")%>

</div>

<div class="info">

<b>RAM:</b>
<br>

<%=product.get("ram")%>

</div>

<div class="info">

<b>Storage:</b>
<br>

<%=product.get("storage")%>

</div>

<div class="info">

<b>Condition:</b>
<br>

<%=product.get("condition")%>

</div>

<div class="info">

<b>Description:</b>
<br>

<%=product.get("description")%>

</div>

<div class="price">

₹ <%=product.get("price")%>

</div>

<a href="buyer/wishlist.jsp?id=<%=product.get("id")%>&name=<%=product.get("name")%>&price=<%=product.get("price")%>&image=<%=product.get("image")%>"
class="btn">

Add To Wishlist

</a>

<%

}else{

%>

<h1>

Product Not Found

</h1>

<%

}

%>

</div>

</body>

</html>