<div class="navbar">
	<a href="./homepage" class="navbar-brand"><img src="./inner-images/chatbot_logo.png" id="logo"></a>
	<div id="LoginRegister">
			<% 
		if(session.getAttribute("username")==null){ %>
		<a href="./login"><button type="button" class="logRegButton" style="margin-top: 34px;">Login</button></a>
				<a href="./register"><button type="button" class="logRegButton">Register</button></a>
		<%} else{ %>
		  	<p>
		<%= session.getAttribute("username") %>
		<a href="./logout"><button type="button" class="btn btn-danger">Logout</button></a>
		<%}  %>
		</p>
	</div>
</div>