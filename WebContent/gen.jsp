<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link  href="boot/bootstrap.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/JQuery.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:url(images/bgr.jpg)">
<form action='managermainhome.jsp' method='post'><input type='submit' name='b' value='Back'></form>
<div class="container">
<div class="row">
<div class="col-sm-8">
<iframe name="order" frameborder="0" src="codetable.jsp" height="400" width="100%"></iframe>
</div>
<div class="col-sm-4">
<iframe name='manager' frameborder='0' src='gencode.jsp' height='300' width='100%'></iframe>
</div></div></div>
</body>
</html>