<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>

<html>
<head>    
    <title>Pet Chat Bot</title>
    <style>
	@import url(https://fonts.googleapis.com/css?family=Montserrat:700);

	body { 
		overflow:hidden;
	}
	a {
	  text-decoration:none;
	}
	#LoginRegister {
		position:absolute;
		width: .001vmin;
		height: .001vmin;
		right: 95px;
		margin: 5px;
		border: 3px;
		border-radius: 5px;
	}
	#LoginRegister a {
		font-family: Constantia, "Lucida Bright", "DejaVu Serif", Georgia, "serif";
		float:left;
		font-size: 120%;
		color:white;
	}
	#LoginRegister a:hover {
		color:orange;
	}
	#logo {
		position:absolute;
		top:1%;
		left:1%;
		-webkit-user-select: none;  /* Chrome all / Safari all */
		-moz-user-select: none;     /* Firefox all */
		-ms-user-select: none;      /* IE 10+ */
		user-select: none;          /* Likely future */ 
	}
    .chatbox {
        font-size: 4em;
        position: fixed;
        justify-content: center;
        background:#ece5dd;
        width:100vw;
        height:100vh;
        bottom:0;
        right:0;
    }
    .button, .value {
        line-height: 1;
        border: medium solid;
        min-height: 1em;
        min-width: 1em;
    }
    .button {
         cursor: pointer;
         user-select: none;
         font-size:12pt;
         display: inline;
         border:1px solid #7D99CA;
         color: #fff;
         border-radius: 10px;
         -webkit-border-radius: 10px;
         -moz-border-radius: 10px;
         font-family: Verdana;
         width: auto;
         height: auto;
         font-size: 12pt;
         padding: 1.1vh 1.5vw;
         background-color: #25d366;
     }
     .button:hover, .button:active{
          border:1px solid #5D7FBC;
          color: #fff;
          background-color: #97A8C7;
     }
    .minus {
        color: red;
    }
    .plus {
        color: green;
    }
    .value {
        min-width: 2em;
        width:90%;
        resize: none;
        height:80%;
        font-size:12pt;
    }
    .state {
        font-size: 2em;
    }
    #messagebox {
          overflow:auto;
          width:100%; 
          height:89vh;
     }
     #you {
         font-size: 12pt;
         text-align: left;
         margin-left: 1%;
         background-color: #dcf8c6;
         max-width:58%;
         border-radius:5px;
         padding-top:5px;
         padding-bottom:5px;
         padding-left:3%;
     }
     #bot {
         font-size: 12pt;
         text-align: left;
         margin-right: 1%;
         margin-left:32%;
         max-width:65%;
         background-color: white;
         border-radius:5px;
         padding-top:5px;
         padding-bottom:5px;
         padding-right:3%;
         padding-left: 3%;
    }
    ::-webkit-scrollbar {
  		width: 10px;
	}

	/* Track */
	::-webkit-scrollbar-track {
  		background: #f1f1f1; 
	}
 
	/* Handle */
	::-webkit-scrollbar-thumb {
  		background: #888; 
	}

	/* Handle on hover */
	::-webkit-scrollbar-thumb:hover {
  		background: #555; 
	}

	
	#header {
		background:#075e54;
		width:95%;
		color:white;
		font-size:12pt;
		padding-left: 5%;
		padding-top: 2vh;
	    padding-bottom: 2vh;
	    opacity: 1;
	    box-sizing: initial;
		-webkit-user-select: none;  /* Chrome all / Safari all */
		-moz-user-select: none;     /* Firefox all */
		-ms-user-select: none;      /* IE 10+ */
		user-select: none;          /* Likely future */ 
	}
	#header:hpver{
		opacity: 0.7;
	}
	#header2 {
		position: fixed;
	    bottom: 1%;
	    right: 1%;
	    background: #075e54;
	    width: 285px;
	    color: white;
	    font-size: 12pt;
	    padding-left: 2%;
	    padding-top: 2%;
	    padding-bottom: 2%;
	    box-sizing: initial;
   		-webkit-user-select: none;  /* Chrome all / Safari all */
		-moz-user-select: none;     /* Firefox all */
		-ms-user-select: none;      /* IE 10+ */
		user-select: none;          /* Likely future */ 
	}
	#message {
		border-radius:5px;
		height: 38px;
		width:93vw;
		box-sizing: initial;
	}
	
	#goto {
		position: absolute;
		top:85%;
		left:30%;
	}
	
	#gotoButton {
		width:150%;
		font-size:28pt;
		padding:5% 5% 5% 5%;
	}
	#button_icon {
		width:auto;
		height:38px;
		display: inline-block;
		vertical-align: middle;
		line-height: normal;
	}
	.close {
		cursor: pointer;
		
	}
	.close a{
		margin-left: 74%;
		font-weight: bold;
		box-sizing: initial;
	}
	.open {
		visibility: hidden;
		cursor: pointer;
		box-sizing: initial;
	}

</style>
</head>

<body>
    <div class="chatbox">
		<div id="header" class="d-flex align-items-center close"><span >Chatbot</span></div>
		<div id="messagebox">
		</div>
		<!-- <textarea class="value"></textarea> -->
		<div class="d-flex flex-row bd-highlight mb-3 align-items-center" style="font-size:12pt; padding: 2px;">
		  <div class="p-2 bd-highlight" style=" display: inline;"><input id="message" class="name" type="text"/></div>
		  <div class="p-2 bd-highlight" style="display: inline;"><div class="confirm button" >Send</div></div>
		</div>
	</div>
	<div id="header2" class="d-flex align-items-center open"><span>Chatbot</span></div>
	<script>
		window.sessionStorage
		var minus = document.querySelector('.minus'),
		    plus = document.querySelector('.plus'),
		    value = document.querySelector('.value'),
		    users = document.querySelector('.users'),
		    name = document.querySelector('.name'),
		    confirm = document.querySelector('.confirm'),
		    close = document.querySelector('.close'),
		    chatbox = document.querySelector('.chatbox'),
		    open = document.querySelector('.open'),
		    open_new = document.querySelector('.open-new'),
		    websocket = new WebSocket("ws://174.138.36.204:6789");
		document.querySelector('#message').addEventListener('keypress', function (e) {
		    if (e.key === 'Enter') {
		      confirm.onclick();
		    }
		});
		var username;
		var counter = 0;
		var messagesArray = []
		var messageLinks = []
		var msgCounter = sessionStorage.getItem("counter");
		var msgboxstorage = sessionStorage.getItem("msgArray");
		var msgLinks = sessionStorage.getItem("links");
		var j=0;
		if (msgCounter != null) {
			console.log(msgboxstorage)
			counter = msgCounter
			messagesArray = msgboxstorage.split(".,")
			var msgbox = document.getElementById("messagebox")
			var links = msgLinks.split(",")
			console.log("counter:"+counter);
			console.log("msgLinks:"+msgLinks);
       		for(i=0;i<counter*2;i+=2){
       			var new_message = document.createElement("H4");
                var new_message_bot = document.createElement("H4");
                var link_element = document.createElement("A");	
                var text = document.createTextNode(messagesArray[i])
                var link_text = document.createTextNode("Click for More Detail..");
                messageLinks[j] = links[j]
                var link = links[j++];
                messagesArray[i] = messagesArray[i]+".";
                if((counter*2)-2==i){
                	messagesArray[i+1] = messagesArray[i+1].substring(0,messagesArray[i+1].length - 1)
                }
                var text2 = document.createTextNode(messagesArray[i+1])
                messagesArray[i+1] = messagesArray[i+1]+".";
                new_message.appendChild(text)
                new_message.id = "you"
               	msgbox.appendChild(new_message)
               	new_message_bot.appendChild(text2)
               	if(link == " "  || link == "" || link == "  "){
       			}else{
       				link_element.href = link;
           			link_element.style.display = "block"
           			link_element.appendChild(link_text);
           			new_message_bot.appendChild(link_element);
        		}
                
                new_message_bot.id = "bot"
                msgbox.appendChild(new_message_bot)
                msgbox.scrollTop = msgbox.scrollHeight;
       		}
			console.log(messagesArray);
		}
		confirm.onclick = function (event) {
		    var x = document.getElementById("message").value;
		    document.getElementById("message").value = "";
		    console.log(x)
		    if(username==null){
			    <% 
			    if(session.getAttribute("username")==null){ %>
			    	username = "<%=request.getSession().getAttribute("unknownuser_id")%>"
		    	<%}else{%>
		    		username = "<%=request.getSession().getAttribute("username")%>"
		    	<%}%>
			}
			else{
				<% 
			    if(session.getAttribute("username")==null){ %>
		    	<%}else{%>
		    		username = "<%=request.getSession().getAttribute("username")%>"
		    	<%}%>
			}
		    websocket.send(JSON.stringify({name: x, user:username}));
		    websocket.onmessage = function (event) {
	    	var new_message = document.createElement("H4");
            var new_message_bot = document.createElement("H4");
            var link_element = document.createElement("A");	
		    data = JSON.parse(event.data);
		    switch (data.type) {
		        case 'state':
		        	console.log("1")
		        	console.log(username);
		        	console.log(data.user);
		        	if(username == data.user){
		        		var msgbox = document.getElementById("messagebox")
		        		var text = document.createTextNode(data.msg)
		        		var link_text = document.createTextNode("Click for More Detail..");
		        		messagesArray.push(data.msg+".");
		        		var text2 = document.createTextNode(data.value)
		        		var link = data.link;
		        		
		        		messagesArray.push(data.value+".");
                        new_message.appendChild(text)
                        new_message.id = "you"
                       	msgbox.appendChild(new_message)
                       	new_message_bot.appendChild(text2)
                        new_message_bot.id = "bot"
                       	if(link == " "  || link == "" || link == "  "){
                  			}else{
                  				link_element.href = link;
                      			link_element.style.display = "block"
                      			link_element.appendChild(link_text);
                      			new_message_bot.appendChild(link_element);
                   		}
                        msgbox.appendChild(new_message_bot)
                        messageLinks.push(link);
                        msgbox.scrollTop = msgbox.scrollHeight;
		        		counter++;
	        			sessionStorage.setItem("counter", counter);
	        			sessionStorage.setItem("links", messageLinks)
	        			sessionStorage.setItem("msgArray", messagesArray);
		        		//value.value += "You : "+data.msg+"\n";
			            //value.value += "Bot : "+data.value+"\n";
			            //value.scrollTop = value.scrollHeight;
		        	}
		        	console.log("2")
		        	console.log(username);
		        	console.log(data.user);
		            break;
		        default:
		            console.error(
		                "unsupported event", data);
		    }
		}
		
		};
	</script>
    </body>
</html>