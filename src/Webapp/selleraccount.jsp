<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href = "style2.css"/>
<meta charset="ISO-8859-1">
<title>Seller Account</title>
</head>
<body>

<!--header section start-->
<header>


    <div class="header-2">
        <img src="image/logo.jpeg" alt="" width="60px" height="60px">   <!-- Page Logo -->>
     
     	<!-- Header Navigation Bar -->>
        <div class="navbar-links">
          <ul>
              <li><a href="#"><li class="fa fa-home fa-2x">HOME</a></li>
              <li><a href="#"><li class="fa fa-users fa-2x">ABOUT US</a></li>
              <li><a href="#"><li class="fa fa-phone-square fa-2x">CONTACT</a></li>
              <li><a href="#"><li class="fa fa-chevron-circle-down fa-2x">CATEGORY</a>
                <div class="sub-menu">
                    <ul>
                       <li ><a href="#">Electronic Devices</a></li>
                       <li ><a href="#">Women's Fashion</a></li>
                       <li ><a href="#">Men's Fashion</a></li>
                       <li ><a href="#">Watches & Accessories</a></li>
                       <li ><a href="#">Sports items</a></li>
                       <li ><a href="#">Health & Beauty</a></li>
                       
                        
                </ul>
                </div>    
                </li>
              
                
        </div>
        </ul>  
   
     <!-- CSS Part Start -->
          <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
             
        }
        
         body{
           
            background-image: url(image/sellerupdatepage.jpg);
            background-position: 30px right;  
              
        }
        
        .formbox{
            max-width: 400px;
            width: 100%;
            background: linear-gradient(135deg, #e1e448, #c857f5);
            margin: 20px auto;
            padding: 30px;
            box-shadow: 10px 10px 5px #228B22;
            border-radius: 20px;
           
           
        }
        
        .Submit-button{
            width: 50%;
            padding: 10px 20px;
            cursor: pointer;
            display: block;
            margin: auto;
            background-color: #800000;
            color: #FFFFFF;
            border: 0;
            outline: none;
            border-radius: 20px;
        }
   
   
   </style>
     <!-- CSS Part End -->>
   
   
   </header>
<!--header section end-->


<br><br><br><br><br>
<center>
 <div class = "formbox">
	<h3 style = "text-align:center"><font size = "6">Seller Account</h3></font><br>


	<table>
	<c:forEach var = "sel" items="${selDetails}">
	
	<c:set var="sellerid" value="${sel.sellerID}"/>
	<c:set var="firstname" value="${sel.firstName}"/>
	<c:set var="lastname" value="${sel.lastName}"/>
	<c:set var="email" value="${sel.email}"/>
	<c:set var="password" value="${sel.password}"/>
	<c:set var="confirmpassword" value="${sel.confirmPassword}"/>
	<c:set var="contactnumber" value="${sel.contactNumber}"/>
	
	
	<tr>
		<td><h2>Seller ID</h2></td>
		<td><h2>${sel.sellerID}</h2></td>
	</tr>
	<tr>
		<td><h2>First Name</h2></td>
		<td><h2>${sel.firstName}</h2></td>
	</tr>
	<tr>
		<td><h2>Last Name</h2></td>
		<td><h2>${sel.lastName}</h2></td>
	</tr>
	<tr>
		<td><h2>Email</h2></td>
		<td><h2>${sel.email}</h2></td>
	</tr>
	<tr>
		<td><h2>Password</h2></td>
		<td><h2>${sel.password}</h2></td>
	</tr>
	<tr>
		<td><h2>Confirm Password</h2></td>
		<td><h2>${sel.confirmPassword}</h2></td>
	</tr>
	<tr>
		<td><h2>Contact Number</h2></td>
		<td><h2>${sel.contactNumber}</h2></td>
	</tr>
	
	
	
	</c:forEach>
	</table>
	
	<!--Update-->
	<c:url value="updateseller.jsp" var="selupdate">
	
		<c:param name = "selid" value = "${sellerid}"/>
		<c:param name = "fname" value = "${firstname}"/>
		<c:param name = "lname" value = "${lastname}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "passw" value = "${password}"/>
		<c:param name = "cpassw" value = "${confirmpassword}"/>
		<c:param name = "contactno" value = "${contactnumber}"/>
		
	</c:url>
	<br>
	<a href="${selupdate}">
	<button type="Submit" class = "Submit-button">Update</button><br>
	</a>
	
	<br>
	<!--Delete-->
	<c:url value="deleteseller.jsp" var="seldelete"> 
	
		<c:param name = "selid" value = "${sellerid}"/>
		<c:param name = "fname" value = "${firstname}"/>
		<c:param name = "lname" value = "${lastname}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "passw" value = "${password}"/>
		<c:param name = "cpassw" value = "${confirmpassword}"/>
		<c:param name = "contactno" value = "${contactnumber}"/>
	</c:url>
	<a href="${seldelete}">
	<button type="Submit" class = "Submit-button">Delete My Account</button><br>
	</a>
	
	<br>
	<a href="SellerAddProducts.jsp">
	<button type="Submit" class = "Submit-button">Post Products</button><br>
	</a>

	</div>
	</center>
	
	
		<br><br><br><br><br><br><br><br><br><br>
	
	
	<!--footer section start-->
<footer class="footer">
   
     
    <div class="container-1">
        <div class="row">
            <div class="footer-col">
                <h4>COMPANY</h4><br>
                <ul>
    
                    <li><a href="About US.html">ABOUT US</a></li>
                    <li><a href="contact.html">CONTACT US</a></li>
                    <li><a href="#">CATEGORY</a></li>
                </ul>
    
            </div>
            <div class="footer-col">
                <h4>ABOUT A.D.O.S ONLINE STORE</h4><br>
                <ul>
    
                    <li><a href="#">MALABE SLIIT UNIVERSITY<br>
                         </a></li><br>

                    <li><a href="#">PHONE:+94-0787969803</a></li><br>

                    <li><a href="#">EMAIL:info@A.D.O.STOREcom</a></li>
          
                    
                </ul>
    
            </div>
            <div class="footer-col">
                <h4>CATEGORY</h4><br>
                <ul>
    
                    <li><a href="#">Electronic Devices</a></li>
                    <li><a href="#">Women's Fashion</a></li>
                    <li><a href="#">Men's Fashion</a></li>
                    <li><a href="#">Watches & Accessories</a></li>
                    <li><a href="#">Sports items</a></li>
                    <li><a href="#">Health & Beauty</a></li>
                </ul>
    
            </div>
            <div class="footer-col">
                <h4>follow us</h4><br>
                <ul>
    
                    <li><a href="#"><img src="image/face.png" alt="" width="30" height="30"></a></li><br>
                    <li><a href="#"><img src="image/twi.png" alt="" width="30" height="30"></a></li><br>
                    <li><a href="#"><img src="image/waht.png" alt="" width="30" height="30"></a></li><br>
                    
                    
                    
                </ul>
    
            </div>
            
    
    
        </div>
    
    
    
    </div>
    
        
    </footer>
    <!--footer section end-->
	
	
	
</body>
</html>