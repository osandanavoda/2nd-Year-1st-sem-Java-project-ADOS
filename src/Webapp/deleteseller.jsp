<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href = "style2.css"/>
<meta charset="ISO-8859-1">
<title>Delete Seller</title>
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
        
                  
          
          
          <!-- CSS Part Start -->>
          <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
             
        }

        body{
           
            background-image: url(image/sellerdelete.png);
            background-position: right center;   
           
        }

        input{
            display: inline-block;
           
            
        }

        h3{
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            color:#000000
        }

        .formbox{
            max-width: 400px;
            width: 100%;
            background: linear-gradient(135deg, #e1e448, #c857f5);
            margin: 20px auto;
            padding: 30px;
            box-shadow: 10px 10px 5px #800000;
            border-radius: 20px;
           
           
        }
        
        .forminput{
 			form input[type = "text"]{
 				text-transform: lowercase;
 			}     
        
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
        
        .check-box{
        	margin: 30px 10px 20px 0;
        	
        }
        
        .p-1{
        	font-size: 15px;
        	color: #FFFFFF;
        
        }
        

       
    </style>
    <!-- CSS Part End -->>
            


        
    </div>
    <br><br>




</header>
<!--header section end-->


	<% 
		String sellerID = request.getParameter("selid");
		String firstName = request.getParameter("fname");
	    String lastName = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String password = request.getParameter("passw");
	    String confirmPassword = request.getParameter("cpassw");
	    String contactNumber = request.getParameter("contactno");
	  
	%>


<center>

<div class = "formbox">
	<h3 style = "text-align:center"><font size = "6">Delete Seller Account</h3></font><br>

	<form action="delete" method = "post">
	<h2>
		Seller ID : <br><input type="text" name = "selid" value ="<%= sellerID %>" readonly><br><br>
		First Name : <br><input type="text" name = "fname" value ="<%= firstName %>" readonly><br><br>
		Last Name : <br><input type="text" name = "lname" value ="<%= lastName %>" readonly><br><br>
		Email : <br><input type="text" name = "email" value ="<%= email %>" readonly><br><br>
		Contact Number :  <br><input type="text" name = "contactno" value ="<%= contactNumber %>" readonly><br><br>
	
		<button type="Submit" class = "Submit-button">Delete My Account</button><br>
		
		</h2>
		</div>
		
		</form>
		</center>



































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