<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>
About EcoBin
</title>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
href="css/style.css">

<style>

body{

margin:0;
padding:0;
font-family:Arial,sans-serif;
background:#0f172a;
color:white;

}

.hero{

width:100%;
height:85vh;

background:
linear-gradient(
rgba(0,0,0,0.6),
rgba(0,0,0,0.6)
),

url('https://images.unsplash.com/photo-1528323273322-d81458248d40?q=80&w=1600&auto=format&fit=crop');

background-size:cover;
background-position:center;

display:flex;
justify-content:center;
align-items:center;

text-align:center;

padding:20px;

}

.hero-content{

max-width:900px;

}

.hero-content h1{

font-size:65px;
margin-bottom:25px;

}

.hero-content p{

font-size:22px;
line-height:1.8;
color:#d1d5db;

}

.section{

width:90%;
max-width:1300px;
margin:80px auto;

}

.section-title{

font-size:45px;
margin-bottom:40px;
text-align:center;

}

.about-grid{

display:grid;
grid-template-columns:1fr 1fr;
gap:40px;
align-items:center;

}

.about-image{

width:100%;
height:420px;
object-fit:cover;
border-radius:25px;

}

.about-content{

font-size:19px;
line-height:2;
color:#d1d5db;

}

.stats-container{

display:grid;
grid-template-columns:repeat(2,1fr);
gap:25px;
margin-top:50px;

}

.stat-card{

background:#111827;
padding:35px;
border-radius:22px;
text-align:center;

}

.stat-card h1{

font-size:45px;
color:#22c55e;
margin-bottom:15px;

}

.stat-card p{

font-size:18px;

}

.recycling-grid{

display:grid;
grid-template-columns:1fr 1fr 1fr;
gap:30px;
margin-top:40px;

}

.recycle-card{

background:#111827;
border-radius:22px;
overflow:hidden;

}

.recycle-card img{

width:100%;
height:250px;
object-fit:cover;

}

.recycle-content{

padding:25px;

}

.recycle-content h2{

font-size:28px;
margin-bottom:15px;

}

.recycle-content p{

font-size:17px;
line-height:1.8;
color:#d1d5db;

}

.activist-grid{

display:grid;
grid-template-columns:repeat(3,1fr);
gap:30px;
margin-top:50px;

}

.activist-card{

background:#111827;
padding:25px;
border-radius:25px;
text-align:center;

}

.activist-card img{

width:160px;
height:160px;
border-radius:50%;
object-fit:cover;
margin-bottom:20px;

}

.activist-card h2{

font-size:28px;
margin-bottom:12px;

}

.activist-card p{

font-size:16px;
line-height:1.8;
color:#d1d5db;

}

.timeline-item{

background:#111827;
padding:30px;
border-left:6px solid #22c55e;
margin-bottom:25px;
border-radius:15px;

}

.timeline-item h2{

font-size:28px;
margin-bottom:15px;

}

.timeline-item p{

font-size:17px;
line-height:1.8;
color:#d1d5db;

}

.footer{

margin-top:80px;
padding:30px;
background:#111827;
text-align:center;
font-size:17px;

}

@media(max-width:1000px){

.about-grid,
.recycling-grid,
.activist-grid,
.stats-container{

grid-template-columns:1fr;

}

.hero-content h1{

font-size:45px;

}

}

</style>

</head>

<body class="home-page">

<div class="navbar">

<div class="logo">
EcoBin
</div>

<div class="nav-links">

<a href="home.jsp">Home</a>
<a href="products.jsp">Products</a>
<a href="about.jsp">About</a>
<a href="login.jsp">Logout</a>

</div>

</div>

<!-- HERO -->

<div class="hero">

<div class="hero-content">

<h1>

Building A Cleaner Future Through E-Waste Recycling

</h1>

<p>

EcoBin helps reduce electronic waste through sustainable reuse,
refurbishment and responsible recycling practices.

</p>

</div>

</div>

<!-- ABOUT ECOBIN -->

<div class="section">

<h1 class="section-title">

About EcoBin Marketplace

</h1>

<div class="about-grid">

<div class="about-content">

EcoBin Marketplace is a sustainable e-commerce platform focused on reducing
electronic waste through refurbishment, recycling awareness and responsible reuse
of electronic products.

The platform encourages users to choose refurbished electronics
instead of contributing to unnecessary e-waste generation.

EcoBin offers affordable refurbished products including:

<br><br>

✔ Laptops  
✔ Mobile Phones  
✔ Gaming Accessories  
✔ Computer Components  
✔ Electronic Gadgets  

<br><br>

Our mission is to create a digital marketplace where sustainability
and technology work together.

EcoBin promotes:

<br><br>

✔ Responsible e-waste disposal  
✔ Reduction of landfill waste  
✔ Sustainable consumer behavior  
✔ Circular economy initiatives  
✔ Affordable technology access  

</div>

<img src="https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?q=80&w=1200&auto=format&fit=crop"
class="about-image">

</div>

</div>

<!-- WHY RECYCLING -->

<div class="section">

<h1 class="section-title">

Why E-Waste Recycling Matters

</h1>

<div class="about-grid">

<img src="https://images.unsplash.com/photo-1518770660439-4636190af475?q=80&w=1200&auto=format&fit=crop"
class="about-image">

<div class="about-content">

Electronic waste is one of the fastest-growing waste streams globally.

Improper disposal of electronics releases toxic chemicals into soil,
water and air, causing environmental damage.

EcoBin promotes safe recycling and refurbishment practices
to reduce pollution and extend the lifecycle of electronic devices.

</div>

</div>

</div>

<!-- STATS -->

<div class="section">

<h1 class="section-title">

EcoBin Sustainability Impact

</h1>

<div class="stats-container">

<div class="stat-card">

<h1>

62M+

</h1>

<p>

Tons of e-waste generated globally every year

</p>

</div>

<div class="stat-card">

<h1>

50M+

</h1>

<p>

Devices reused through sustainable refurbishment

</p>

</div>

</div>

</div>

<!-- RECYCLING BENEFITS -->

<div class="section">

<h1 class="section-title">

How Recycling Helps

</h1>

<div class="recycling-grid">

<div class="recycle-card">

<img src="https://images.unsplash.com/photo-1497436072909-60f360e1d4b1?q=80&w=1200&auto=format&fit=crop">

<div class="recycle-content">

<h2>

Reduce Pollution

</h2>

<p>

Recycling prevents toxic chemicals from damaging ecosystems and water sources.

</p>

</div>

</div>

<div class="recycle-card">

<img src="https://images.unsplash.com/photo-1509395176047-4a66953fd231?q=80&w=1200&auto=format&fit=crop">

<div class="recycle-content">

<h2>

Save Resources

</h2>

<p>

Valuable metals and reusable materials are recovered from old electronics.

</p>

</div>

</div>

<div class="recycle-card">

<img src="https://images.unsplash.com/photo-1495908333425-29a1e0918c5f?q=80&w=1200&auto=format&fit=crop">

<div class="recycle-content">

<h2>

Promote Sustainability

</h2>

<p>

Refurbishing electronics reduces unnecessary manufacturing waste.

</p>

</div>

</div>

</div>

</div>

<!-- ACTIVISTS -->

<div class="section">

<h1 class="section-title">

Environmental Leaders & Activists

</h1>

<div class="activist-grid">

<div class="activist-card">

<img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1200&auto=format&fit=crop">

<h2>

Annie Leonard

</h2>

<p>

Environmental activist promoting sustainable waste management practices.

</p>

</div>

<div class="activist-card">

<img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1200&auto=format&fit=crop">

<h2>

Basel Action Network

</h2>

<p>

Organization fighting illegal electronic waste dumping worldwide.

</p>

</div>

<div class="activist-card">

<img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1200&auto=format&fit=crop">

<h2>

Vandana Shiva

</h2>

<p>

Indian environmental advocate supporting sustainability and conservation.

</p>

</div>

</div>

</div>

<!-- ECOBIN JOURNEY -->

<div class="section">

<h1 class="section-title">

EcoBin Mission Journey

</h1>

<div class="timeline-item">

<h2>

2024 — Awareness Initiative

</h2>

<p>

Started spreading awareness about electronic waste recycling and sustainability.

</p>

</div>

<div class="timeline-item">

<h2>

2025 — Refurbishment Marketplace

</h2>

<p>

Launched a sustainable marketplace for refurbished electronics.

</p>

</div>

<div class="timeline-item">

<h2>

2026 — Sustainable Expansion

</h2>

<p>

Expanded recycling partnerships and eco-friendly technology initiatives.

</p>

</div>

</div>

<!-- COMMUNITY -->

<div class="section">

<h1 class="section-title">

Community Recycling Initiatives

</h1>

<div class="timeline-item">

<h2>

School Awareness Programs

</h2>

<p>

Educational initiatives teaching students about responsible recycling practices.

</p>

</div>

<div class="timeline-item">

<h2>

Local Collection Drives

</h2>

<p>

Campaigns encouraging safe disposal and collection of unused electronics.

</p>

</div>

</div>

<div class="footer">

© 2026 EcoBin Marketplace | Sustainable E-Waste Recycling Initiative

</div>

</body>

</html>