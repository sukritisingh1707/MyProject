<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
<style>
*{
   margin:0;
   padding:0;
}
body{
    background-image: url('E:/New folder/20170622_153248.jpg');
    background-size: 100% 700px;
    background-repeat: no repeat;	
}	

.register{
background: #2d85b0;
width: 500px;
margin: 0px 0px 0px 430px;
color: white;
font-size: 18px;
padding:20px;
border-radius: 10px;
}
#register{
     margin-left: 50px;
}


label{
   color: white;
   font-family:sans-serif;
   font-size: 18px;
   font-style: italic;
}
#name{
      width: 300px;
 /* height: 30px; */
 border: none;
 border-radius: 3px;
 outline: 0;
 padding: 7px;
}
#ph{
    width: 65px;
padding: 7px;
border:none;
border-radius: 3px;
outline: 0;
}
#num{
     width: 230px;
padding: 7px;
border:none;
border-radius: 3px;
outline: 0;
}
#sub{
     width: 200px;
padding: 7px;
font-size: 16px;
font-family: sans-serif;
font-weight: 600;
border: none;
border-radius:3px;
outline: 0;





}






</style>
 
</head>
<body>
<div class="register">
<form method="post" id="register" action="Register">
<h1 style="margin-left:40px;">Registration form</h1>
<h2 style="margin-left:60px; padding:10px">Register Here</h2>
<label>First Name :</label><br>
<input type="text" name="fname" id="name" placeholder="Enter your first name"><br><br>
<label>Last Name :</label><br>
<input type="text" name="lname" id="name" placeholder="Enter your last name"><br><br>
<label>Mobile Number :</label><br>
<select id="ph">
<option>+91</option>
<option>+92</option>
<option>+93</option>
<option>+94</option>
<option>+95</option>
</select>
<input type="number" name="Mnum" id="num" placeholder="Enter your mobile number"><br><br>
<label>Email :</label><br>
<input type="email" name="email" id="name" placeholder="Enter your email"><br><br>
<label>Password :</label><br>
<input type="password" name="password1" id="name" placeholder="Enter your password"><br><br>
<label>Re-enter your password:</label><br>
<input type="password" name="password2" id="name" placeholder="Enter your password"><br><br>
<input type="radio" name="gender" value="Male"><span id="male">&nbsp; Male</span>&nbsp;&nbsp;
<input type="radio" name="gender" value="Female"><span id="female">&nbsp; Female</span>&nbsp;&nbsp;
<input type="radio" name="gender" value="other"><span id="other">&nbsp; Other</span>&nbsp;&nbsp;<br><br>
<input type="radio" name="role" value="Employee"><span id="male">&nbsp; Employee</span>&nbsp;&nbsp;
<input type="radio" name="role" value="Employer"><span id="female">&nbsp; Employer</span>&nbsp;&nbsp;
<input type="submit" value="Submit" id="sub">


</form>
</div>
</body>
</html>