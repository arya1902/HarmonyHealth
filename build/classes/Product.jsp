<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Blog</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
     integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<style>
    
   
.col {
        list-style-type: none;
        margin: 0;
        width: 200px;
        background-color: gray;
        height: 570px;
        position: fixed;
        
        
        
    }
    .col li a{
        display: block;
        text-decoration: none;
        padding: 20px 10px;
        color: black;
        font-size: 25px;
    }
    .col li a:hover{
        /*background-color: azure;*/
        color: red;
    }
    .box{
        border: 1px solid whitesmoke;
        background-color: whitesmoke;
        height: 70px;
       
    }
    ol a  {
        float: left;
        left: 50%;
        position: relative;
        font-size: 20px;
        list-style-type: none;
        font-size: 30px;
       padding:10px;
        color: black;
        padding-bottom: 10px;
        font-family: Arial, Helvetica, sans-serif;
        text-decoration: none;
     }
     ol a:hover {
            color: red;
            text-decoration: none;
  

    }

    
    .image img{
        margin-top: 10px;
       
        height: 250px;
        width: 250px;
        float: left; 
        margin-right: 300px;
    }
    .image1 img{
        float: right;
        height: 250px;
        width: 250px;
    }
    .image3 img{
        float: left;
        margin-left: 210px;
        height: 250px;
        width: 250px;
    }
    .txt{
    	margin-left:500px;
    	padding:10px;
    }
    .btn{
    	width: 200px;
        padding: 10px;
        border: none;
        background-color: rgba(116, 1, 145, 0.514);
        letter-spacing: 2px;
        font-weight: bold;
        color: white;
        margin-left:50px;
        }
    }
    

</style>

<body>
<form action="AddProjectServlet" method="post">
  
   <div class="box sticky-top">
      <ol>
       <a href="MainMenu.jsp">Home&nbsp;&nbsp; &nbsp;</a>
       <a href="product.jsp">Product &nbsp;&nbsp; &nbsp;</a>
       <a href="Cart.jsp">Cart &nbsp;&nbsp; &nbsp;</a>
       <a href="contact.jsp">contact Us &nbsp;&nbsp; &nbsp;</a>
   </ol>
   
    </div>
    	<div class="txt">
         Product Name :<input type="text" name="title" class="txt1"><br><br>
		Product Price :<input type="text" name="description" class="txt1"><br><br>
	
		<input type="submit" value="Add Product" class="btn">
		<a href="ListProjectServlet">List Projects</a>
	
           </div> 
          
         <div class="card-columns" style="float: left;margin-left: 130px;margin-top:20px">
           <div class="card border-primary mb-3" style="max-width: 18rem;">
            <div class="card-header">KURTIS</div>
            <div class="card-body text-primary">
            
                <img src="kurti.jpg" style="width: 100px;margin-left: 60px;">
             <h6 class="card-text">KURTI <br>Price:350 RS  </h6>
             
            </div>
          </div>
          <div class="card border-secondary mb-3" style="max-width: 18rem;">
            <div class="card-header">PURSES</div>
            <div class="card-body text-secondary">
             <img src="k3.jpg" style="width: 170px;margin-left: 30px;">
             <h6 class="card-text">PURSE <br> Price : 300 RS</h6>
             
            </div>
          </div>
          <div class="card border-success mb-3" style="max-width: 18rem;">
            <div class="card-header">T-SHIRTS</div>
            <div class="card-body text-success">
             <img src="i1.jpg" style="width: 100px;margin-left: 60px;">
             <h6 class="card-text">T-SHIRT <br>Price :250 RS </h6>
              
            </div>
          </div>
          <div class="card border-danger mb-3" style="max-width: 18rem;">
            <div class="card-header">BAGS</div>
            <div class="card-body text-danger">
             
              <img src="purse1.jpg" style="width: 100px;margin-left: 60px;">
             <h5 class="card-text">BAG <br> Price: 220 RS </h5>
             

             
            </div>
          </div>
          <div class="card border-warning mb-3" style="max-width: 18rem;">
            <div class="card-header">TOPS</div>
            <div class="card-body text-warning">
              <img src="kurti1.jpg" style="width: 100px;margin-left: 60px;">
              <h6 class="card-text">TOP <br> Price: 500 RS</h6>
              
            </div>
          </div>
          <div class="card border-info mb-3" style="max-width: 18rem;">
            <div class="card-header">Hand Bags</div>
            <div class="card-body text-info">
              <img src="purse2.jpg"style="width: 100px;margin-left:60px">
             <h6 class="card-text">HAND BAG <br> Price: 700 RS</h6>
			 
             
            </div>
          </div>
         
          </div>
          
            
         <div class="card-columns" style="float: left;margin-left: 130px;margin-top:20px">
           <div class="card border-primary mb-3" style="max-width: 18rem;">
            <div class="card-header">Hoodies</div>
            <div class="card-body text-primary">
            
                <img src="img2.jpg" style="width: 100px;margin-left: 60px;">
             <h6 class="card-text">HOODIE <br> Price: 300 RS  </h6>
            
            </div>
          </div>
          
          <div class="card border-secondary mb-3" style="max-width: 18rem;">
            <div class="card-header">PURSES</div>
            <div class="card-body text-secondary">
             <img src="pr1.jpg" style="width: 170px;margin-left: 30px;">
             <h6 class="card-text">PURSE <br> Price: 250 RS</h6>
              >
            </div>
          </div>
          <div class="card border-success mb-3" style="max-width: 18rem;">
            <div class="card-header">T-SHIRTS</div>
            <div class="card-body text-success">
             <img src="b2.jpeg" style="width: 100px;margin-left: 60px;">
             <h6 class="card-text">T-SHIRT <br> Price: 400 RS </h6>
             
              
            </div>
          </div>
          <div class="card border-danger mb-3" style="max-width: 18rem;">
            <div class="card-header">BAGS</div>
            <div class="card-body text-danger">
             
              <img src="pr2.jpg" style="width: 100px;margin-left: 60px;">
             <h5 class="card-text">BAG <br> Price: 350 RS </h5>
             

             
            </div>
          </div>
          <div class="card border-warning mb-3" style="max-width: 18rem;">
            <div class="card-header">TOPS</div>
            <div class="card-body text-warning">
              <img src="k1.jpg" style="width: 100px;margin-left: 60px;">
              <h6 class="card-text">TOP <br> Price: 450 RS</h6>
             
            </div>
          </div>
          <div class="card border-info mb-3" style="max-width: 18rem;">
            <div class="card-header">Hand Bags</div>
            <div class="card-body text-info">
              <img src="pr.jpg"style="width: 100px;margin-left:60px">
             <h6 class="card-text">HAND BAG <br> Price: 200 RS</h6>
			 
             
            </div>
          </div>
          
        </div>
        
        
     </form>     
        
</body>
</html>