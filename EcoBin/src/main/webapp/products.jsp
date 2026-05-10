<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

List<Map<String,String>> products =

(List<Map<String,String>>)
application.getAttribute("products");

if(products==null){

products =
new ArrayList<>();

}

/* ADD PRODUCT */

String action =
request.getParameter("action");

if(action!=null &&
action.equals("addProduct")){

Map<String,String> product =
new HashMap<>();

String id =
UUID.randomUUID().toString();

product.put("id",id);

product.put("name",
request.getParameter("name"));

product.put("category",
request.getParameter("category"));

product.put("price",
request.getParameter("price"));

product.put("processor",
request.getParameter("processor"));

product.put("ram",
request.getParameter("ram"));

product.put("storage",
request.getParameter("storage"));

product.put("condition",
request.getParameter("condition"));

product.put("description",
request.getParameter("description"));

String image =
request.getParameter("image");

if(image==null || image.trim().equals("")){

image =
"https://images.unsplash.com/photo-1517336714739-489689fd1ca8?q=80&w=1200&auto=format&fit=crop";

}

product.put("image",image);

products.add(product);

application.setAttribute(
"products",
products
);

}

/* REMOVE PRODUCT */

String removeId =
request.getParameter("removeId");

if(removeId!=null){

Iterator<Map<String,String>> iterator =
products.iterator();

while(iterator.hasNext()){

Map<String,String> p =
iterator.next();

if(p.get("id").equals(removeId)){

iterator.remove();

break;

}

}

application.setAttribute(
"products",
products
);

response.sendRedirect(
"products.jsp"
);

return;

}

%>

<!DOCTYPE html>
<html>

<head>

<title>

Marketplace

</title>

<style>

body{
background:#0f172a;
font-family:Arial;
color:white;
margin:0;
}

.container{
width:92%;
margin:40px auto;
}

.grid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:25px;
}

.card{
background:#111827;
border-radius:20px;
overflow:hidden;
}

.card img{
width:100%;
height:240px;
object-fit:cover;
}

.content{
padding:20px;
}

.name{
font-size:28px;
font-weight:bold;
margin-bottom:15px;
}

.info{
background:#1f2937;
padding:12px;
border-radius:10px;
margin-bottom:12px;
line-height:1.7;
}

.price{
font-size:34px;
font-weight:bold;
color:#22c55e;
margin:20px 0;
}

.btn{
display:block;
padding:14px;
text-align:center;
text-decoration:none;
border-radius:12px;
font-weight:bold;
margin-top:12px;
}

.view-btn{
background:#2563eb;
color:white;
}

.remove-btn{
background:#ef4444;
color:white;
}

</style>

</head>

<body>

<div class="container">

<h1>

Marketplace Products

</h1>

<br><br>

<div class="grid">

<%

for(Map<String,String> product : products){

%>

<div class="card">

<img src="<%=product.get("image")%>">

<div class="content">

<div class="name">

<%=product.get("name")%>

</div>

<div class="info">

Category:
<%=product.get("category")%>

</div>

<div class="info">

Processor:
<%=product.get("processor")%>

</div>

<div class="info">

RAM:
<%=product.get("ram")%>

</div>

<div class="info">

Storage:
<%=product.get("storage")%>

</div>

<div class="price">

₹ <%=product.get("price")%>

</div>

<a href='productDetails.jsp?id=<%=product.get("id")%>'
class="btn view-btn">

View Product

</a>

<a href='products.jsp?removeId=<%=product.get("id")%>'
class="btn remove-btn">

Remove Product

</a>

</div>

</div>

<%

}

%>

</div>

</div>

</body>

</html>