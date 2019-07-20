<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style>
body{
     margin:0;
     padding:0;
     text-align: center;
     background-image: linear-gradient(rgba(0,0,150,0.5),rgba(0,0,50,0.5)),url('C:/project pic/240_F_234535159_vPVux3QbwgrSRzGDlSRZPS8j6kvVV9aG.jpg');
     background-size: cover;
     background-position: center;
     font-family: sans-serif;
}
.contact-title{
               margin-top: 100px;
               colour: #fff;
               text-transform: uppercase;
               transition: all 4s ease-in-out;
              
}
.contact-title h1{
              font-size: 32px;
              line-height: 10px;
}
.contact-title h2{
              font-size: 16px;
}
form{
     margin-top:50px;
     transition: all 4s ease-in-out;
}
.form-control{
            width: 600px;
            background: transparent;
            border: none;
            outline: none;
            border-bottom: 1px solid gray;
            color: #fff;
            front-size: 18px;
            margin-bottom: 16px;
}
input{
     height: 45px;
}
form .submit{
           background: #ff5722;
           border-colour: transparent;
           color: #fff;
           font-size: 20px;
           font-weight: bold;
           letter-spacing: 2px;
           height: 50px;
           margin-top: 20px;

}
form .submit:hover{
                 background-color: #f44336;
                 cursor: pointer;
}
</style>
</head>
<body>
<div class="contact-title">
      <h1>Contact US</h1>
      <h2>WE are always ready to serve you!</h2>
</div>
<div class="contact-form">
      <form id="contact-form" method="post" action="">
      <input name="name" type="text" class="form-control" placeholder="your name" required><br>
            <input name="email" type="email" class="form-control" placeholder="your email" required><br>
            <textarea name="message" class="form-control" placeholder="message" rows="4" required></textarea><br>
            <input type="submit" class="form-control submit" value="SEND MESSAGE">
            </form>
      
</div>
</body>
</html>