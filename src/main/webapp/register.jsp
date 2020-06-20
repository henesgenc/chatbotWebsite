<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<script>
var x = ${error1};
console.log(x);
if(x==1){
window.alert("Username is already exists.");
}/*else if(x==2){
window.alert("Username not found.");
 }else if(x==3){ 
window.alert("Firstly you should login.");
}*/
</script>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<style>
#general {
    height: 100%;
    width: 100%;
   background-color:#e0e0e0;
}
#medium{
	margin-left:33%;
	margin-top:5%;
	margin-bottom:22.7%;
	margin-right:20%;
	height:50%;
    width: 30%;
    background-color:#e0e0e0;
}
input[type=text],[type=password],select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit]:hover {
    background-color: #efb558;
}

input[type=submit] {
    width: 100%;
    background-color: #f28b00;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
p{
font-family:Arial;
text-align:center;
color:#f28b00;
font-size: 1.875em;
font-weight:bold;
}
.alert {
    padding: 20px;
    background-color: #f44336; /* Red */
    color: white;
    margin-bottom: 15px;
}

/* The close button */
.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
    color: black;
}
.alert {
    opacity: 1;
    transition: opacity 0.6s; /* 600ms to fade out */
}
</style>

<script>
// Get all elements with class="closebtn"
var close = document.getElementsByClassName("closebtn");
var i;

// Loop through all close buttons
for (i = 0; i < close.length; i++) {
    // When someone clicks on a close button
    close[i].onclick = function(){

        // Get the parent of <span class="closebtn"> (<div class="alert">)
        var div = this.parentElement;

        // Set the opacity of div to 0 (transparent)
        div.style.opacity = "0";

        // Hide the div after 600ms (the same amount of milliseconds it takes to fade out)
        setTimeout(function(){ div.style.display = "none"; }, 600);
    }
}
</script>
<body>
<div id="general">&nbsp;
<div id="medium">
<p>CREATE ACCOUNT</p>
<!--<% 
//if(request.getAttribute("htn")!=null){
	%>
	<div class="alert">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  	This is an alert box.
	</div>
	<%//}%>-->

<form action="./registerControl" method="post">

<input type="text" name="username" placeholder="Username" required><br>

<input type="password" name="user_password" min="8" max="32" placeholder="Password"><br>

<input type="text" name="user_name" placeholder="Name"><br>


<input type="text" name="user_surname" placeholder="Last Name"><br>
    
<input type="date" name="user_birthdate" placeholder="Birthday"><br>

  
    <input type="submit" value="Submit">
  </form>
</div>

</div>


</body>
</html>