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
var name = $("#name").val();
$.getJSON("AjaxJsonServlet?name=" + name, function (data) {
console.log(data);
var helloWorldData = data.content;
$("#quote p").html("<p>" + helloWorldData + "</p>");
});
});
});
</script>
</head>
<body>
<div id="quote">
<hr>
<p>Hello </p>
<hr/>
</div>
<input type="text" id="name" value="William">
<input type="submit" id="replaceContent" value="Refresh local"></input>
</body>
</html>