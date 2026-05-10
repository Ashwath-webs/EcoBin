<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>
Seller Dashboard
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

.sidebar{

position:fixed;
left:0;
top:0;

width:260px;
height:100vh;

background:#111827;

padding:30px 20px;

overflow:auto;

}

.logo{

font-size:34px;
font-weight:bold;

color:#22c55e;

margin-bottom:40px;

text-align:center;

}

.menu{

display:flex;
flex-direction:column;
gap:18px;

}

.menu a{

text-decoration:none;

padding:16px 18px;

border-radius:14px;

background:#1f2937;

color:white;

font-size:17px;
font-weight:bold;

transition:0.3s;

}

.menu a:hover{

background:#22c55e;

transform:translateX(5px);

}

.main-content{

margin-left:260px;

padding:35px;

}

.topbar{

display:flex;
justify-content:space-between;
align-items:center;

margin-bottom:35px;

}

.topbar h1{

font-size:42px;

}

.profile{

display:flex;
align-items:center;
gap:15px;

background:#111827;

padding:12px 18px;

border-radius:16px;

}

.profile img{

width:55px;
height:55px;

border-radius:50%;

object-fit:cover;

}

.stats-grid{

display:grid;
grid-template-columns:repeat(4,1fr);

gap:25px;

margin-bottom:40px;

}

.stat-card{

background:#111827;

padding:30px;

border-radius:22px;

transition:0.3s;

}

.stat-card:hover{

transform:translateY(-5px);

}

.stat-card h2{

font-size:20px;
margin-bottom:15px;

color:#cbd5e1;

}

.stat-card h1{

font-size:42px;
color:#22c55e;

}

.quick-actions{

display:grid;
grid-template-columns:repeat(4,1fr);

gap:25px;

margin-bottom:45px;

}

.action-card{

background:#111827;

padding:30px;

border-radius:22px;

text-align:center;

transition:0.3s;

}

.action-card:hover{

background:#1f2937;
transform:scale(1.03);

}

.action-icon{

font-size:45px;

margin-bottom:18px;

}

.action-card h2{

margin-bottom:15px;

}

.action-card a{

display:inline-block;

margin-top:15px;

padding:12px 22px;

background:#22c55e;

color:white;

text-decoration:none;

border-radius:12px;

font-weight:bold;

}

.section-title{

font-size:34px;

margin-bottom:25px;

}

.table-container{

background:#111827;

padding:25px;

border-radius:22px;

overflow:auto;

margin-bottom:40px;

}

table{

width:100%;
border-collapse:collapse;

}

table th{

background:#1f2937;

padding:18px;

text-align:left;

font-size:17px;

}

table td{

padding:18px;

border-bottom:1px solid #374151;

font-size:16px;

}

.status{

padding:8px 16px;

border-radius:30px;

font-size:14px;
font-weight:bold;

display:inline-block;

}

.active{

background:#16a34a;

}

.pending{

background:#eab308;
color:black;

}

.recent-orders{

display:grid;
grid-template-columns:1fr 1fr;

gap:30px;

}

.order-card{

background:#111827;

padding:25px;

border-radius:22px;

}

.order-card h2{

margin-bottom:18px;

}

.order-item{

display:flex;
justify-content:space-between;

padding:14px 0;

border-bottom:1px solid #374151;

}

.footer{

margin-top:40px;

text-align:center;

padding:25px;

background:#111827;

border-radius:18px;

color:#cbd5e1;

}

@media(max-width:1200px){

.stats-grid,
.quick-actions{

grid-template-columns:1fr 1fr;

}

.recent-orders{

grid-template-columns:1fr;

}

}

@media(max-width:850px){

.sidebar{

position:relative;
width:100%;
height:auto;

}

.main-content{

margin-left:0;

}

.stats-grid,
.quick-actions{

grid-template-columns:1fr;

}

}

</style>

</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar">

<div class="logo">

EcoBin Seller

</div>

<div class="menu">

<a href="dashboard.jsp">

🏠 Dashboard

</a>

<a href="addProduct.jsp">

➕ Add Product

</a>

<a href="manageProducts.jsp">

📦 Manage Products

</a>

<a href="orders.jsp">

🛒 Orders

</a>

<a href="analytics.jsp">

📊 Analytics

</a>

<a href="../home.jsp">

🌐 View Marketplace

</a>

<a href="../login.jsp">

🚪 Logout

</a>

</div>

</div>

<!-- MAIN -->

<div class="main-content">

<div class="topbar">

<h1>

Seller Dashboard

</h1>

<div class="profile">

<img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1200&auto=format&fit=crop">

<div>

<h3>

Welcome Seller

</h3>

<p>

Manage your products easily

</p>

</div>

</div>

</div>

<!-- STATS -->

<div class="stats-grid">

<div class="stat-card">

<h2>

Total Products

</h2>

<h1>

128

</h1>

</div>

<div class="stat-card">

<h2>

Orders Received

</h2>

<h1>

342

</h1>

</div>

<div class="stat-card">

<h2>

Revenue

</h2>

<h1>

₹2.4L

</h1>

</div>

<div class="stat-card">

<h2>

Active Listings

</h2>

<h1>

94

</h1>

</div>

</div>

<!-- QUICK ACTIONS -->

<h1 class="section-title">

Quick Actions

</h1>

<div class="quick-actions">

<div class="action-card">

<div class="action-icon">

➕

</div>

<h2>

Add New Product

</h2>

<p>

Upload new refurbished products quickly.

</p>

<a href="addProduct.jsp">

Add Product

</a>

</div>

<div class="action-card">

<div class="action-icon">

📦

</div>

<h2>

Manage Products

</h2>

<p>

Edit and organize your product listings.

</p>

<a href="manageProducts.jsp">

Manage

</a>

</div>

<div class="action-card">

<div class="action-icon">

🛒

</div>

<h2>

Orders

</h2>

<p>

Track customer orders and delivery updates.

</p>

<a href="orders.jsp">

View Orders

</a>

</div>

<div class="action-card">

<div class="action-icon">

📊

</div>

<h2>

Analytics

</h2>

<p>

Monitor sales, revenue and product performance analytics.

</p>

<a href="analytics.jsp">

View Analytics

</a>

</div>

</div>

<!-- PRODUCT TABLE -->

<h1 class="section-title">

Recent Product Listings

</h1>

<div class="table-container">

<table>

<tr>

<th>

Product

</th>

<th>

Category

</th>

<th>

Price

</th>

<th>

Stock

</th>

<th>

Status

</th>

</tr>

<tr>

<td>

Dell Inspiron Laptop

</td>

<td>

Laptop

</td>

<td>

₹18,500

</td>

<td>

12

</td>

<td>

<span class="status active">

Active

</span>

</td>

</tr>

<tr>

<td>

Samsung Galaxy S21

</td>

<td>

Mobile

</td>

<td>

₹22,000

</td>

<td>

8

</td>

<td>

<span class="status active">

Active

</span>

</td>

</tr>

<tr>

<td>

Sony Headphones

</td>

<td>

Accessories

</td>

<td>

₹6,500

</td>

<td>

5

</td>

<td>

<span class="status pending">

Pending

</span>

</td>

</tr>

</table>

</div>

<!-- RECENT ORDERS -->

<h1 class="section-title">

Order Overview

</h1>

<div class="recent-orders">

<div class="order-card">

<h2>

Recent Orders

</h2>

<div class="order-item">

<span>

Order #1024

</span>

<span>

₹18,500

</span>

</div>

<div class="order-item">

<span>

Order #1025

</span>

<span>

₹22,000

</span>

</div>

<div class="order-item">

<span>

Order #1026

</span>

<span>

₹6,500

</span>

</div>

</div>

<div class="order-card">

<h2>

Top Selling Categories

</h2>

<div class="order-item">

<span>

Laptops

</span>

<span>

42%

</span>

</div>

<div class="order-item">

<span>

Mobiles

</span>

<span>

31%

</span>

</div>

<div class="order-item">

<span>

Accessories

</span>

<span>

27%

</span>

</div>

</div>

</div>

<div class="footer">

© 2026 EcoBin Seller Dashboard | Sustainable E-Waste Marketplace

</div>

</div>

</body>

</html>