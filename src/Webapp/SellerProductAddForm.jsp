<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet"
type = "text/css"
href = "style2.css"/>
<meta charset="ISO-8859-1">
<title>Seller Product Add Form</title>

</head>
<body>

<!--header section start-->
<header>


    <div class="header-2">
        <img src="image/logo.jpeg" alt="" width="60px" height="60px">    <!-- Page Logo -->
     
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
           
            background-image: url(image/selleraddproductform3.jpg);
            background-position:crop;       
           
          }
         
          .formbox{
            max-width: 600px;
            height: 790px;
            width: 100%;
            background: linear-gradient(135deg, #e1e448, #c857f5);
            margin: 20px auto;
            padding: 30px;
            box-shadow: 10px 10px 5px #87CEEB;
            border-radius: 20px;
           }
            
           <!--Choose File CSS--->
           input[type = "file"]{
           		diplay: none;
           }
           
           textarea{
			position: absolute;     
			left: 45%;
			width: 330px;
			height: 120px;      
           }
           
           .Submit-button{
            width: 50%;
            padding: 10px 20px;
            cursor: pointer;
            display: block;
            margin: auto;
            background-color: #00008B;
            color: #FFFFFF;
            border: 0;
            outline: none;
            border-radius: 20px;
            bottom: 20%;
           }
     
           
         
            </style>
            <!-- CSS Part End -->>
        
        

       
</header>
<!--header section end-->

<br><br><br><br>

<!--Provide Product Info Form-- -->
 <div class = "formbox">
 <h3 style = "text-align:center"><font size = "6">Provide Product Info</h3></font><br>

<form action = "Seller Provide Product Info.html" method = "POST">
   <h2> 
   	
    <br><br><font size = "4"> Product Name : <br> <input type = "text" name = "Product Name"/> <br><br>
    
    Product Category : <select name = "Category">
    		<option value = "1">Electronic Devices</option>
    		<option value = "1">Women's Fashion</option>
    		<option value = "1">Men's Fashion</option>
    		<option value = "1">Watches & Accessories</option>
    		<option value = "1">Sports items</option>
    		<option value = "1">Health & Beauty</option>
    	</select><br><br><br>
    	
	
	Product Status : 
	<input type = "radio" id = "PS" name = "BN" value = "Brand New">
	<label for = "BN"> Brand New </label>
	
	<input type = "radio" id = "PS" name = "SH" value = "Second Hand">
	<label for = SH"> Second Hand </label><br><br><br>
	
	
	Product Price : <br> <input type = "text" name = "Product Price"/> <br><br><br>
	
	
	Image of Product
	<input type = "file" id = "file" accept = "image/*">
	<lable for = "file">
	</lable><br><br><br>
	

	Product Description<br>
	<textarea name = "message" rows = "5" cols = "20"> </textarea>
	</br>
   

    <br><br><br><br><br><br>
    <button type = "Submit" class = "Submit-button">Submit</button>
    </br></br></br></br></br></br>
    	
    		
    </h2>
    </form>

</br></br></br></br>
</div>




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