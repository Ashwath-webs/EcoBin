<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>

Add Product

</title>

<style>

body{
background:#0f172a;
font-family:Arial;
color:white;
margin:0;
padding:0;
}

.container{
width:90%;
max-width:900px;
margin:40px auto;
background:#111827;
padding:40px;
border-radius:20px;
}

h1{
font-size:42px;
margin-bottom:30px;
}

.input-box{
margin-bottom:20px;
}

.input-box label{
display:block;
margin-bottom:10px;
font-weight:bold;
}

.input-box input,
.input-box textarea,
.input-box select{

width:100%;
padding:15px;
border:none;
border-radius:12px;
background:#1f2937;
color:white;

}

textarea{
height:120px;
resize:none;
}

.btn{
width:100%;
padding:18px;
background:#22c55e;
border:none;
border-radius:14px;
color:white;
font-size:18px;
font-weight:bold;
cursor:pointer;
}

</style>

</head>

<body>

<div class="container">

<h1>

Add Product

</h1>

<form action="../products.jsp"
method="post">

<input type="hidden"
name="action"
value="addProduct">

<div class="input-box">

<label>

Product Name

</label>

<input type="text"
name="name"
required>

</div>

<div class="input-box">

<label>

Category

</label>

<select name="category">

<option>Laptop</option>
<option>Mobile</option>
<option>Tablet</option>
<option>Gaming</option>
<option>Accessories</option>

</select>

</div>

<div class="input-box">

<label>

Price

</label>

<input type="number"
name="price"
required>

</div>

<div class="input-box">

<label>

Processor

</label>

<input type="text"
name="processor">

</div>

<div class="input-box">

<label>

RAM

</label>

<input type="text"
name="ram">

</div>

<div class="input-box">

<label>

Storage

</label>

<input type="text"
name="storage">

</div>

<div class="input-box">

<label>

Condition

</label>

<select name="condition">

<option>Excellent</option>
<option>Very Good</option>
<option>Good</option>

</select>

</div>

<div class="input-box">

<label>

Description

</label>

<textarea
name="description"></textarea>

</div>

<div class="input-box">

<label>

Image URL

</label>

<input type="text"
name="image">

</div>

<button type="submit"
class="btn">

Add Product To Marketplace

</button>

</form>

</div>

</body>

</html>