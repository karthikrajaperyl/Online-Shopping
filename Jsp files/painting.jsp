<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ONLINE SHOPPING</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 70%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>
<body>

<div class="header">
<img src="painting.jpg" alt="paintings" width="80%" height="500px">
<h1></h1>
</div>

<div class="topnav">
  <a href="#">Home</a>
  <a href="#">Filter</a>
  <a href="#">Others</a>
 <a href="#"  style="float:right" style="text-color:green">SIGN IN</a>
  <a href="#" style="float:right">🛒</a>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_5terre.jpg">
      <img src="painting1.jpg" alt="painting1" width="100%" height="100%">
    </a>
    <div class="desc"  name="product1">Royal painting</br><p name="prize1" style="text-color:red">$40</p></br><button onclick=myFunction()>ADD TO CART</button></div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_forest.jpg">
      <img src="painting2.jpg" alt="painting2" width="300" height="250">
       </a>
 <div class="desc" name="product2">Plain painting</br><p name="prize2" style="text-color:red">$30</p></br><button class="btn" >ADD TO CART</button></div>
    </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_lights.jpg">
      <img src="painting3.jpg" alt="painting3" width="300" height="250">
    
    </a>
            <div class="desc" name="product3">RAW painting</br><p name="prize3" style="text-color:red">$20</p></br><button class="btn" >ADD TO CART</button></div>

  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_mountains.jpg">
      <img src="painting4.jpg" alt="painting4" width="300" height="250">
        
</a>

            <div class="desc" name="product4"><p name="prize4" style="text-color:red">TABLE painting</br>$10</p></br><button class="btn" >ADD TO CART</button></div>

  </div>
</div>
<script>
function myFunction() {
  alert("added to cart");
}

</script>

</body>
</html>
	
<body bgcolor="AliceBlue">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.PrintWriter" %>
<%
java.sql.Connection cn=null;
PreparedStatement st=null;
{

try
{
		Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/onlineshopping";
cn = DriverManager.getConnection(url,"root","root");
st=cn.prepareStatement("INSERT INTO details VALUES(?,?)");
String prize=request.getParameter("prize1");
String product=request.getParameter("product1");	

st.setString(1,prize);
st.setString(2,product);
int h=st.executeUpdate();
st.close();
cn.close();
} 
catch(Exception ex)
{
ex.printStackTrace();
}
}
%>
</body>
</html>

</body>
</html>