<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href = "style2.css"/>
<meta charset="ISO-8859-1">
<title>Seller Provide Product Info</title>
<!-- Importing Font Type -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&family=Open+Sans:wght@600&family=Source+Sans+Pro:wght@700&family=Square+Peg&display=swap" rel="stylesheet">


</head>
<body>

<!--header section start-->
<header>


    <div class="header-2">
        <img src="image/logo.jpeg" alt="" width="60px" height="60px">       <!--Page Logo-->>
     
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
          <style type = "text/css">
          
          *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
             
        }
          
           body{
           
            background-image: url(image/SellerProductaddpage.jpeg);
           
            
              
        }
        
        	p{
        	
        	text-align: center;
        	font-size: 80px;
        	font-family: 'Source Sans Pro', sans-serif;
        	margin: 0;
        	padding: 0 20px;
        	color: #000000;
        	text-shadow: 0 0 20px #ff005b;
        		
        }
        	<!---Adding Neon Effect To Text CSS Part-->
        	p:after{
        	
        	content: attr(p);
        	text-align: center;
        	top: 0;
        	left: 0;
        	padding: 0 20px;
        	z-index: -1;
        	color: #000000;
        	filter: blur(15px);
        	
        }
        
        	p:before{
        	
        	content: '';
        	top: 0;
        	left: 0;
        	width: 100%;
        	height: 100%;
        	background: #ff005b;
        	z-index: -2;
        	opacity: .5;
        	filter: blur(40px);
        	
        	
        }
        
        <!--Provide Button CSS Part-->
        	.ProvButton{
        	display: flex;
        	align-items: center;
        	height: 100vh;
        	margin: 20px;
        }
        
        	.button {
        	border: none;
        	outline: none;
        	font-weight: bold;
        	font-size: 17px;
        	position: absolute;
        	left: 680px;
        	height: 40px;
        	width: 140px;
        	background: #90EE90;
        	font0size: 16px;
        	border-radius: 20px;
        	
        	
        }
        
        .button:hover{
        	cursor: pointer;
        	background: #ffc000;
        	box-shadow: 0 0 5px #90EE90,
        				0 0 20px #90EE90,
        				0 0 60px #90EE90,
        				0 0 150px #90EE90;
        }
        
        
       
          </style>
          <!-- CSS Part End -->>
          
          
       
            
        </form>
     


     
    </div>
    <br><br>
    
    
    
    
</header>
<!--header section end-->


<br><br><br><br><br><br><br><br><br><br>

	<p>PROVIDE YOUR</p><br></br>
	<p>PRODUCT</p><br></br>
	<p>INFO</p>
	</br></br></br></br></br></br></br></br></br></br>
	

<!--Provide Button-->
	<div class = "ProvButton">
		<input type = "button" class = "button" value = "Provide" <a href = "SellerAddProducts.jsp"></a>>
	</div>
	<br><br><br><br><br><br><br>


	
	
    
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