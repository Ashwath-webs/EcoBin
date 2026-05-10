<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>
Seller Analytics
</title>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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

margin-bottom:40px;

}

.topbar h1{

font-size:42px;

}

.analytics-grid{

display:grid;
grid-template-columns:repeat(4,1fr);

gap:25px;

margin-bottom:40px;

}

.analytics-card{

background:#111827;

padding:30px;

border-radius:22px;

transition:0.3s;

}

.analytics-card:hover{

transform:translateY(-5px);

}

.analytics-card h2{

font-size:18px;
color:#cbd5e1;

margin-bottom:15px;

}

.analytics-card h1{

font-size:42px;
color:#22c55e;

margin-bottom:10px;

}

.analytics-card p{

color:#94a3b8;
font-size:15px;

}

.chart-grid{

display:grid;
grid-template-columns:1fr 1fr;

gap:30px;

margin-bottom:40px;

}

.chart-card{

background:#111827;

padding:30px;

border-radius:24px;

}

.chart-title{

font-size:28px;

margin-bottom:25px;

}

.product-performance{

background:#111827;

padding:30px;

border-radius:24px;

margin-bottom:40px;

overflow:auto;

}

table{

width:100%;
border-collapse:collapse;

}

table th{

background:#1f2937;

padding:18px;

text-align:left;

font-size:16px;

}

table td{

padding:18px;

border-bottom:1px solid #374151;

}

.progress{

width:100%;
height:12px;

background:#1e293b;

border-radius:20px;

overflow:hidden;

}

.progress-bar{

height:100%;
background:#22c55e;

}

.insights-grid{

display:grid;
grid-template-columns:1fr 1fr 1fr;

gap:25px;

margin-bottom:40px;

}

.insight-card{

background:#111827;

padding:28px;

border-radius:22px;

}

.insight-card h2{

font-size:24px;

margin-bottom:18px;

color:#22c55e;

}

.insight-card p{

line-height:1.8;
color:#cbd5e1;

}

.footer{

padding:25px;

background:#111827;

border-radius:18px;

text-align:center;

color:#cbd5e1;

}

@media(max-width:1200px){

.analytics-grid{

grid-template-columns:1fr 1fr;

}

.chart-grid,
.insights-grid{

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

.analytics-grid{

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

🌐 Marketplace

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

Sales Analytics

</h1>

</div>

<!-- TOP STATS -->

<div class="analytics-grid">

<div class="analytics-card">

<h2>

Total Revenue

</h2>

<h1>

₹2.4L

</h1>

<p>

+18% growth this month

</p>

</div>

<div class="analytics-card">

<h2>

Products Sold

</h2>

<h1>

1,248

</h1>

<p>

Across all categories

</p>

</div>

<div class="analytics-card">

<h2>

Customer Ratings

</h2>

<h1>

4.8★

</h1>

<p>

Average seller rating

</p>

</div>

<div class="analytics-card">

<h2>

Returning Customers

</h2>

<h1>

73%

</h1>

<p>

High customer retention

</p>

</div>

</div>

<!-- CHARTS -->

<div class="chart-grid">

<div class="chart-card">

<h1 class="chart-title">

Monthly Revenue

</h1>

<canvas id="revenueChart"></canvas>

</div>

<div class="chart-card">

<h1 class="chart-title">

Top Selling Categories

</h1>

<canvas id="categoryChart"></canvas>

</div>

</div>

<!-- PRODUCT PERFORMANCE -->

<div class="product-performance">

<h1 class="chart-title">

Top Product Performance

</h1>

<table>

<tr>

<th>

Product

</th>

<th>

Units Sold

</th>

<th>

Revenue

</th>

<th>

Performance

</th>

</tr>

<tr>

<td>

Dell Inspiron Laptop

</td>

<td>

320

</td>

<td>

₹5,92,000

</td>

<td>

<div class="progress">

<div class="progress-bar"
style="width:92%">

</div>

</div>

</td>

</tr>

<tr>

<td>

Samsung Galaxy S21

</td>

<td>

245

</td>

<td>

₹5,39,000

</td>

<td>

<div class="progress">

<div class="progress-bar"
style="width:85%">

</div>

</div>

</td>

</tr>

<tr>

<td>

Sony Headphones

</td>

<td>

180

</td>

<td>

₹1,17,000

</td>

<td>

<div class="progress">

<div class="progress-bar"
style="width:72%">

</div>

</div>

</td>

</tr>

<tr>

<td>

HP Gaming PC

</td>

<td>

98

</td>

<td>

₹5,39,000

</td>

<td>

<div class="progress">

<div class="progress-bar"
style="width:88%">

</div>

</div>

</td>

</tr>

</table>

</div>

<!-- INSIGHTS -->

<div class="insights-grid">

<div class="insight-card">

<h2>

📈 Market Trends

</h2>

<p>

Refurbished laptops and gaming products are currently the
highest performing categories on EcoBin marketplace.

Demand for sustainable electronics increased significantly
during the last quarter.

</p>

</div>

<div class="insight-card">

<h2>

🌍 Sustainability Impact

</h2>

<p>

Your product sales helped reduce approximately
2.3 tons of electronic waste through refurbishment
and reuse initiatives.

This directly contributes to sustainable technology adoption.

</p>

</div>

<div class="insight-card">

<h2>

⭐ Customer Insights

</h2>

<p>

Customers prefer products with detailed descriptions,
multiple images and verified quality assurance.

Products with strong ratings receive 42% more conversions.

</p>

</div>

</div>

<!-- FOOTER -->

<div class="footer">

© 2026 EcoBin Analytics Dashboard |
Sustainable Marketplace Insights

</div>

</div>

<script>

const revenueChart = new Chart(

document.getElementById('revenueChart'),

{

type:'line',

data:{

labels:[
'Jan',
'Feb',
'Mar',
'Apr',
'May',
'Jun'
],

datasets:[{

label:'Revenue',

data:[
45000,
62000,
78000,
91000,
120000,
145000
],

borderColor:'#22c55e',

backgroundColor:'rgba(34,197,94,0.2)',

tension:0.4,

fill:true

}]

},

options:{

responsive:true,

plugins:{

legend:{

labels:{
color:'white'
}

}

},

scales:{

x:{
ticks:{
color:'white'
}
},

y:{
ticks:{
color:'white'
}
}

}

}

}

);

const categoryChart = new Chart(

document.getElementById('categoryChart'),

{

type:'doughnut',

data:{

labels:[
'Laptops',
'Mobiles',
'Gaming',
'Accessories'
],

datasets:[{

data:[
42,
28,
18,
12
],

backgroundColor:[
'#22c55e',
'#3b82f6',
'#eab308',
'#ef4444'
]

}]

},

options:{

plugins:{

legend:{

labels:{
color:'white'
}

}

}

}

}

);

</script>

</body>

</html>