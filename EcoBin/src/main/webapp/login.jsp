<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

String error=request.getParameter("error");

%>

<!DOCTYPE html>
<html>

<head>

<title>
EcoBin Login
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

height:100vh;

display:flex;
justify-content:center;
align-items:center;

background:

linear-gradient(
rgba(15,23,42,0.85),
rgba(15,23,42,0.9)
),

url('https://images.unsplash.com/photo-1516321318423-f06f85e504b3?q=80&w=1600&auto=format&fit=crop');

background-size:cover;
background-position:center;

}

.login-container{

width:100%;
max-width:450px;

background:rgba(17,24,39,0.95);

padding:45px;

border-radius:28px;

box-shadow:0 10px 40px rgba(0,0,0,0.4);

color:white;

}

.logo{

font-size:42px;
font-weight:bold;

text-align:center;

margin-bottom:12px;

color:#22c55e;

}

.subtitle{

text-align:center;
color:#cbd5e1;

margin-bottom:35px;

font-size:16px;

}

.input-box{

margin-bottom:22px;

}

.input-box label{

display:block;

margin-bottom:10px;

font-size:15px;
font-weight:bold;

color:#e2e8f0;

}

.input-box input,
.input-box select{

width:100%;

padding:15px;

border:none;

border-radius:14px;

background:#1e293b;

color:white;

font-size:16px;

outline:none;

}

.input-box input:focus,
.input-box select:focus{

border:2px solid #22c55e;

}

.login-btn{

width:100%;

padding:16px;

margin-top:10px;

border:none;

border-radius:15px;

background:#22c55e;

color:white;

font-size:18px;
font-weight:bold;

cursor:pointer;

transition:0.3s;

}

.login-btn:hover{

background:#16a34a;
transform:translateY(-2px);

}

.register-text{

margin-top:25px;

text-align:center;

font-size:15px;

color:#cbd5e1;

}

.register-text a{

color:#22c55e;
text-decoration:none;
font-weight:bold;

}

.error{

background:#ef4444;

padding:14px;

border-radius:12px;

margin-bottom:20px;

text-align:center;

font-size:15px;

}

</style>

</head>

<body>

<div class="login-container">

<div class="logo">

EcoBin

</div>

<div class="subtitle">

Sustainable E-Waste Marketplace

</div>

<%

if(error!=null){

%>

<div class="error">

Invalid Login Credentials

</div>

<%

}

%>

<form onsubmit="return redirectUser()">

<div class="input-box">

<label>

Email Address

</label>

<input type="email"
id="email"
placeholder="Enter your email"
required>

</div>

<div class="input-box">

<label>

Password

</label>

<input type="password"
id="password"
placeholder="Enter your password"
required>

</div>

<div class="input-box">

<label>

Login As

</label>

<select id="role"
required>

<option value="buyer">

Buyer

</option>

<option value="seller">

Seller

</option>

</select>

</div>

<button type="submit"
class="login-btn">

Login

</button>

</form>

<div class="register-text">

Don't have an account?

<a href="register.jsp">

Register Here

</a>

</div>

</div>

<script>

function redirectUser(){

let role=
document.getElementById("role").value;

if(role==="seller"){

window.location.href=
"seller/dashboard.jsp";

}else{

window.location.href=
"home.jsp";

}

return false;

}

</script>

</body>

</html>