<!DOCTYPE html>
<html>

<head>

    <title>EcoBin Marketplace</title>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet"
          href="css/style.css">

<style>

.review-slider{

overflow:hidden;
position:relative;
width:100%;
padding:20px 0;

}

.review-track{

display:flex;
width:max-content;
animation:scrollReviews 35s linear infinite;
gap:30px;

}

.review-track:hover{

animation-play-state:paused;

}

.review-card-scroll{

min-width:350px;
max-width:350px;

background:rgba(10,15,25,0.88);
padding:35px;
border-radius:28px;

backdrop-filter:blur(12px);

box-shadow:0 10px 35px rgba(0,0,0,0.4);

}

.review-card-scroll h2{

font-size:26px;
margin-bottom:10px;

}

.review-role{

color:#22c55e;
margin-bottom:18px;
font-size:15px;

}

.review-card-scroll p{

line-height:2;
color:#d1d5db;

}

@keyframes scrollReviews{

0%{

transform:translateX(0);

}

100%{

transform:translateX(-50%);

}

}

</style>

</head>

<body class="home-page">

<!-- NAVBAR -->

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

<!-- HERO SECTION -->

<div class="hero"
     style="
     background:
     linear-gradient(rgba(0,0,0,0.75),
     rgba(0,0,0,0.82)),
     url('https://images.unsplash.com/photo-1516321318423-f06f85e504b3?q=80&w=1800&auto=format&fit=crop&sat=-100');
     background-size:cover;
     background-position:center;
     ">

    <h1>
        Sustainable Technology For A Cleaner Future
    </h1>

    <p>

        EcoBin is a trusted e-waste marketplace
        helping users buy and sell refurbished
        electronics while reducing environmental pollution.

    </p>

    <a href="products.jsp"
       class="btn">

        Explore Marketplace

    </a>

</div>

<!-- STATS SECTION -->

<div style="
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:30px;
padding:70px;
">

<div class="card">

    <div class="card-content">

        <h2>
            12,500+
        </h2>

        <p>
            Products Recycled
        </p>

    </div>

</div>

<div class="card">

    <div class="card-content">

        <h2>
            8.4 Tons
        </h2>

        <p>
            E-Waste Reduced
        </p>

    </div>

</div>

<div class="card">

    <div class="card-content">

        <h2>
            4,800+
        </h2>

        <p>
            Trusted Customers
        </p>

    </div>

</div>

<div class="card">

    <div class="card-content">

        <h2>
            1,250+
        </h2>

        <p>
            Verified Sellers
        </p>

    </div>

</div>

</div>

<!-- FEATURES -->

<h1 class="title">
    Why Choose EcoBin?
</h1>

<div class="product-grid">

<div class="card">

    <img src="https://i.pinimg.com/1200x/53/b2/71/53b271eda5482e1ff6e61a550b682d7c.jpg">

    <div class="card-content">

        <h2>
            Reduce Electronic Pollution
        </h2>

        <p>

            EcoBin minimizes harmful e-waste
            entering landfills through responsible
            recycling and reuse practices.

        </p>

    </div>

</div>

<div class="card">

    <img src="https://i.pinimg.com/736x/2b/7d/65/2b7d65a5b8db867f4846bd0304378a11.jpg">

    <div class="card-content">

        <h2>
            Sustainable Product Reuse
        </h2>

        <p>

            Extending the lifecycle of electronics
            helps conserve resources and reduce waste.

        </p>

    </div>

</div>

<div class="card">

    <img src="https://i.pinimg.com/webp/1200x/94/29/c9/9429c9bf49cf55ea298066dce5284b65.webp">

    <div class="card-content">

        <h2>
            Trusted Marketplace
        </h2>

        <p>

            Every seller and product is verified
            to maintain quality and reliability.

        </p>

    </div>

</div>

</div>

<!-- USER REVIEWS -->

<h1 class="title"
style="
padding-top:20px;
">

What Users Say

</h1>

<div class="review-slider">

<div class="review-track">

<!-- REVIEW 1 -->

<div class="review-card-scroll">

<h2>
Rahul Sharma
</h2>

<p class="review-role">
Software Engineer in Bengaluru
</p>

<p>
"I purchased a refurbished laptop through EcoBin and the experience was surprisingly professional."
</p>

</div>

<!-- REVIEW 2 -->

<div class="review-card-scroll">

<h2>
Priya Nair
</h2>

<p class="review-role">
UI Designer in Chennai
</p>

<p>
"EcoBin genuinely focuses on sustainability while maintaining excellent product quality."
</p>

</div>

<!-- REVIEW 3 -->

<div class="review-card-scroll">

<h2>
Arun Kumar
</h2>

<p class="review-role">
Electronics Seller in Hyderabad
</p>

<p>
"The platform helped me responsibly sell reusable electronics instead of dumping them."
</p>

</div>

<!-- REVIEW 4 -->

<div class="review-card-scroll">

<h2>
Karthik Raj
</h2>

<p class="review-role">
Gaming Enthusiast in Mumbai
</p>

<p>
"I bought GPU components from EcoBin at almost half the market price."
</p>

</div>

<!-- REVIEW 5 -->

<div class="review-card-scroll">

<h2>
Meera Joseph
</h2>

<p class="review-role">
Startup Founder in Kochi
</p>

<p>
"The UI feels premium and transactions are surprisingly smooth for a sustainability platform."
</p>

</div>

<!-- REVIEW 6 -->

<div class="review-card-scroll">

<h2>
Vignesh Kumar
</h2>

<p class="review-role">
Computer Technician in Coimbatore
</p>

<p>
"EcoBin created a proper marketplace for refurbished electronics which India badly needed."
</p>

</div>

<!-- DUPLICATE FOR LOOP -->

<div class="review-card-scroll">

<h2>
Rahul Sharma
</h2>

<p class="review-role">
Software Engineer in Bengaluru
</p>

<p>
"I purchased a refurbished laptop through EcoBin and the experience was surprisingly professional."
</p>

</div>

<div class="review-card-scroll">

<h2>
Priya Nair
</h2>

<p class="review-role">
UI Designer in Chennai
</p>

<p>
"EcoBin genuinely focuses on sustainability while maintaining excellent product quality."
</p>

</div>

<div class="review-card-scroll">

<h2>
Arun Kumar
</h2>

<p class="review-role">
Electronics Seller in Hyderabad
</p>

<p>
"The platform helped me responsibly sell reusable electronics instead of dumping them."
</p>

</div>

<div class="review-card-scroll">

<h2>
Karthik Raj
</h2>

<p class="review-role">
Gaming Enthusiast in Mumbai
</p>

<p>
"I bought GPU components from EcoBin at almost half the market price."
</p>

</div>

<div class="review-card-scroll">

<h2>
Meera Joseph
</h2>

<p class="review-role">
Startup Founder in Kochi
</p>

<p>
"The UI feels premium and transactions are surprisingly smooth for a sustainability platform."
</p>

</div>

<div class="review-card-scroll">

<h2>
Vignesh Kumar
</h2>

<p class="review-role">
Computer Technician in Coimbatore
</p>

<p>
"EcoBin created a proper marketplace for refurbished electronics which India badly needed."
</p>

</div>

</div>

</div>

<<!-- NEWS SECTION -->

<h1 class="title"
style="
padding-top:20px;
">

Recognized By Media

</h1>

<div class="product-grid">

<!-- NEWS 1 -->

<div class="card">

    <img src="https://www.landesa.org/wp-content/uploads/2022/03/Times-of-India-logo-TOI.jpg">

    <div class="card-content">

        <h2>
            TIMES OF INDIA
        </h2>

        <p>

            "Leading the Charge for a Sustainable Future"

            <br><br>

            EcoBin Revolutionizes the Tech Lifecycle:
            A New Era for E-Waste Begins

            <br><br>

            SILICON VALLEY SAVIORS |
            The digital age finally has a cleanup crew.
            EcoBin's new platform is turning the tide on
            gadget graveyards by making recycling as simple as a single click.

        </p>

    </div>

</div>

<!-- NEWS 2 -->

<div class="card">

    <img src="https://i.pinimg.com/1200x/86/16/1e/86161ebac2cd9d17e8d09d755e67c20e.jpg">

    <div class="card-content">

        <h2>
            THE HINDU
        </h2>

        <p>

            "Where Innovation Meets Preservation"

            <br><br>

            The End of the Landfill:
            EcoBin’s Digital Hub Makes E-Waste History

            <br><br>

            THE CIRCULAR BREAKTHROUGH |
            Gone are the days of junk drawers filled
            with tangled wires.

            EcoBin’s sleek new interface has successfully
            bridged the gap between consumer convenience
            and planetary health.

        </p>

    </div>

</div>

<!-- NEWS 3 -->

<div class="card">

    <img src="https://i.pinimg.com/736x/b2/b4/60/b2b4605161f34c1e13c2e1fbb9d32d65.jpg">

    <div class="card-content">

        <h2>
            HINDUSTAN TIMES
         <p>
         
        </h2>
            THE DAILY RENEWAL
        <p>

            "Tracking the Pulse of the Planet"

            <br><br>

            The Amazon of Recycling Has Arrived:
            EcoBin Sets New Global Standard

            <br><br>

            A SUSTAINABILITY MASTERCLASS |
            Industry analysts are hailing EcoBin
            as the ultimate solution to the
            global e-waste crisis.

        </p>

    </div>

</div>

</div>

<!-- PARTNERS SECTION -->

<h1 class="title"
style="
padding-top:40px;
">

Our Partners

</h1>

<p style="
text-align:center;
color:#d1d5db;
max-width:900px;
margin:0 auto 50px auto;
line-height:2;
font-size:18px;
">

EcoBin collaborates with technology leaders,
recycling innovators and sustainability-focused
organizations to build a cleaner digital future.

</p>

<div class="product-grid">

<!-- PARTNER 1 -->

<div class="card">

    <img src="https://i.pinimg.com/webp/1200x/05/0a/c9/050ac92cb432973286bbba0b3637f17c.webp"
    style="
    background:white;
    padding:40px;
    object-fit:contain;
    ">

    <div class="card-content">

        <h2>
            Samsung Electronics
        </h2>

        <p>

            “EcoBin is creating a scalable ecosystem
            for responsible electronics reuse and
            sustainable recycling practices.”

        </p>

    </div>

</div>

<!-- PARTNER 2 -->

<div class="card">

    <img src="https://upload.wikimedia.org/wikipedia/commons/4/44/Microsoft_logo.svg"
    style="
    background:white;
    padding:40px;
    object-fit:contain;
    ">

    <div class="card-content">

        <h2>
            Microsoft
        </h2>

        <p>

            “EcoBin’s marketplace model aligns with
            the future of circular technology and
            environmentally responsible innovation.”

        </p>

    </div>

</div>

<!-- PARTNER 3 -->

<div class="card">

    <img src="https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg"
    style="
    background:white;
    padding:40px;
    object-fit:contain;
    ">

    <div class="card-content">

        <h2>
            Apple Sustainability Division
        </h2>

        <p>

            “Reducing global e-waste requires
            platforms like EcoBin that make
            technology reuse accessible and trusted.”

        </p>

    </div>

</div>

<!-- PARTNER 4 -->

<div class="card">

    <img src="https://i.pinimg.com/1200x/86/12/9d/86129d69f0d1473196eb7f48034fab88.jpg"
    style="
    background:white;
    padding:40px;
    object-fit:contain;
    ">

    <div class="card-content">

        <h2>
            Intel GreenTech
        </h2>

        <p>

            “EcoBin is helping redefine how consumers
            interact with refurbished technology
            in emerging digital economies.”

        </p>

    </div>

</div>

<!-- PARTNER 5 -->

<div class="card">

    <img src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg"
    style="
    background:white;
    padding:40px;
    object-fit:contain;
    ">

    <div class="card-content">

        <h2>
            Amazon Renewed
        </h2>

        <p>

            “The EcoBin platform demonstrates how
            sustainable commerce can scale with
            trust, transparency and simplicity.”

        </p>

    </div>

</div>

<!-- PARTNER 6 -->

<div class="card">

    <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Nvidia_logo.svg"
    style="
    background:white;
    padding:40px;
    object-fit:contain;
    ">

    <div class="card-content">

        <h2>
            NVIDIA
        </h2>

        <p>

            “EcoBin’s refurbishment ecosystem helps
            extend the lifecycle of high-performance
            computing hardware responsibly.”

        </p>

    </div>

</div>

</div>

<!-- CTA SECTION -->

<div style="
margin:80px auto;
width:90%;
padding:70px;
text-align:center;
background:rgba(10,15,25,0.82);
border-radius:30px;
border:1px solid rgba(255,255,255,0.08);
">

    <h1 style="
    font-size:56px;
    ">

        Join The Green Technology Revolution

    </h1>

    <p style="
    margin-top:25px;
    color:#d1d5db;
    line-height:2;
    max-width:850px;
    margin-left:auto;
    margin-right:auto;
    ">

        EcoBin empowers communities to responsibly
        buy, sell and recycle electronics while
        protecting the environment for future generations.

    </p>

    <a href="products.jsp"
       class="btn">

        Start Exploring

    </a>

</div>

<!-- FOOTER -->

<div class="footer">

    © 2026 EcoBin Marketplace |
    Sustainable Technology Exchange

</div>

</body>
</html>