<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
<%
String name = request.getParameter("uname");
String ageString = request.getParameter("age");
int age = Integer.parseInt(ageString);

if (age < 16) {
	out.print("Seja bem-vindo "+ name + ", você ainda não pode votar, pois tem apenas" + age +" anos!");
} else if (age <= 17 || age >= 65){
	out.print("Seja bem-vindo "+ name + ", o seu voto é facultativo, pois você tem " + age +" anos!");
} else {
	out.print("Seja bem-vindo "+ name + ", você é obrigado a votar, pois tem " + age +" anos!");
}
%>
</form>  
</body>
</html>