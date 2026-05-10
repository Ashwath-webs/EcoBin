<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

List<Map<String,String>> sellerProducts =

(List<Map<String,String>>)
application.getAttribute("sellerProducts");

if(sellerProducts==null){

sellerProducts =
new ArrayList<>();

}

/* REMOVE PRODUCT */

String removeId =
request.getParameter("removeId");

if(removeId!=null){

Iterator<Map<String,String>> iterator =
sellerProducts.iterator();

while(iterator.hasNext()){

Map<String,String> product =
iterator.next();

if(product.get("id")!=null &&
product.get("id").equals(removeId)){

iterator.remove();

break;

}

}

application.setAttribute(
"sellerProducts",
sellerProducts
);

response.sendRedirect(
"manageProducts.jsp"
);

return;

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

Manage Products

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
font-size:50px;
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
}

.card img{
width:100%;
height:240px;
object-fit:cover;
}

.content{
padding:24px;
}

.product-name{
font-size:28px;
font-weight:bold;
margin-bottom:18px;
}

.info{
background:#1f2937;
padding:14px;
border-radius:12px;
margin-bottom:12px;
line-height:1.8;
}

.price{
font-size:36px;
font-weight:bold;
color:#22c55e;
margin:20px 0;
}

.btn{
display:block;
padding:15px;
text-align:center;
text-decoration:none;
border-radius:14px;
font-weight:bold;
margin-top:15px;
}

.view-btn{
background:#2563eb;
color:white;
}

.remove-btn{
background:#ef4444;
color:white;
}

.empty{
background:#111827;
padding:70px;
border-radius:24px;
text-align:center;
}

</style>

</head>

<body>

<div class="container">

<h1 class="title">

Manage Products

</h1>

<%

if(sellerProducts.size()==0){

%>

<div class="empty">

<h2>

No Products Added

</h2>

</div>

<%

}else{

%>

<div class="grid">

<%

for(Map<String,String> product : sellerProducts){

%>

<div class="card">

<img src="<%=product.get("image")%>">

<div class="content">

<div class="product-name">

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

<div class="price">

₹ <%=product.get("price")%>

</div>

<a href='../productDetails.jsp?id=<%=product.get("id")%>'
class="btn view-btn">

View Product

</a>

<a href='manageProducts.jsp?removeId=<%=product.get("id")%>'
class="btn remove-btn">

Remove Product

</a>

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