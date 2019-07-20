<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
  <style>
          body{
               margin: 0;
               padding: 0;
               font-family: sans-serif;
               background-image: url('images/back.jpg');
          }
          .box{
               width: 300px;
               padding: 40px;
               position: absolute;
               top: 50%;
               left: 50%;
               transform: translate(-50%,-50%);
               background: #000080;
               text-align: center;
          }
          .box h1{
               color: yellow;
               text-transform: uppercase;
               font-weight: 500;
          }
          .box input[type = "text"],.box input[type = "password"]{
                border: 0;
                background: none;
                display: block;
                margin: 20px auto;
                text-align: center;
                border: 2px solid #3498db;
                padding: 14px 10px;
                width: 200px;
                outline: none;
                color: yellow;
                border-radius: 24px;
                transition: 0.25s;
            }
           .box input[type = "text"]:hover,.box input[type = "password"]:hover{
  
                 width: 280px;
                 border-color: #2ecc71;
            }   
            .box input[ type = "submit"]{
                 border: 0;
                background: none;
                display: block;
                margin: 20px auto;
                text-align: center;
                border: 2px solid #2ecc71;
                padding: 14px 40px;
                outline: none;
                color: yellow;
                border-radius: 24px;
                transition: 0.25s;
                cursor: pointer;
            }
            .box input[ type = "submit"]:hover{
                background: #2ecc71;
             }
  
   </style>
</head>
<body>
<form class="box" action="Validate" method="post">
<h1>Login</h1>
<input type="text" name="uid" placeholder="Username">
<input type="password" name="pass" placeholder="password">
<input type="submit" name="" value="login">
</form>

</body>
</html>