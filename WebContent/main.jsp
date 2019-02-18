<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="js/jquery.3.3.1.js"></script>
		<script type="text/Javascript">
			$(document).ready(function() {
				$("#replaceContent").click(function() {
					var name = $("#pays").val();
					$.getJSON("YellowJacketAJAXServlet?pays=" + name, function (data) {
						console.log(data);
						var helloWorldData = data.content;
						$("#yellowjacket").html("<p>" + helloWorldData + "</p>");
					});
				});
			});
		</script>
	</head>
		<body>
			<div id="quote">
				<hr>
					 <div id="yellowjacket">Manifestants = </div> 
				<hr/>
			</div>
			<input type="text" id="pays" value="France">
			<input type="submit" id="replaceContent" value="Refresh local"></input>
	</body>
</html>