<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.*" %>

<%

String productId =
request.getParameter("id");

String productName =
request.getParameter("name");

String amount =
request.getParameter("amount");

String image =
request.getParameter("image");

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

/* SELLER ORDERS */

List<Map<String,String>> sellerOrders =

(List<Map<String,String>>)
application.getAttribute("sellerOrders");

if(sellerOrders==null){

sellerOrders =
new ArrayList<>();

}

/* CREATE ORDER */

Map<String,String> order =
new HashMap<>();

order.put("id",
UUID.randomUUID().toString());

order.put("productId",
productId);

order.put("productName",
productName);

order.put("amount",
amount);

order.put("image",
image);

order.put("fullname",
fullname);

order.put("email",
email);

order.put("phone",
phone);

order.put("address",
address);

order.put("city",
city);

order.put("state",
state);

order.put("pincode",
pincode);

order.put("delivery",
delivery);

order.put("paymentStatus",
"Payment Received");

order.put("orderStatus",
"Order Received");

order.put("date",
new java.util.Date().toString());

sellerOrders.add(order);

application.setAttribute(
"sellerOrders",
sellerOrders);

%>

<!DOCTYPE html>
<html>

<head>

<title>

Order Success

</title>

<style>

body{
background:#0f172a;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
font-family:Arial;
color:white;
}

.box{
background:#111827;
padding:50px;
border-radius:24px;
text-align:center;
width:90%;
max-width:650px;
}

.btn{
display:inline-block;
padding:15px 24px;
background:#2563eb;
color:white;
text-decoration:none;
border-radius:14px;
margin-top:25px;
}

</style>

</head>

<body>

<div class="box">

<h1>

Payment Successful

</h1>

<p>

Seller has received:
<br><br>

✔ Product Details
<br>

✔ Payment Details
<br>

✔ Customer Delivery Details

</p>

<a href="../products.jsp"
class="btn">

Continue Shopping

</a>

</div>

</body>

</html>