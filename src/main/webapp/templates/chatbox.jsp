<link href="css/index_style.css" rel="stylesheet">
<div class="chatbox">
		<div id="header" class="d-flex align-items-center close"><span >Chatbot</span><a class="open-new" href="./chatbot_new" target="_blank">+</a><a class="close" style="margin-left:5%;">-</a></div>
		<div id="messagebox" style="width:100%; height:398px;">
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
		close.onclick = function (){
			chatbox.style.visibility = 'hidden';
			open.style.visibility = 'inherit';
		}
		open.onclick = function (){
			chatbox.style.visibility = 'inherit';
			open.style.visibility = 'hidden';
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