<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("userName") != null){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="False"%> 

<%@include file="../../resources/header/adminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="display: flex;
    justify-content: center;
    margin-top: 50px;">
	<h2>Admin Profile</h2>
	</div>
	<div style="display: flex;
    justify-content: center;     margin-top: 50px;">Name :- ${admin.uName}</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	E-mail :- ${admin.emailId}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	First Name :- ${admin.fName}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Last Name :- ${admin.lname}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Middle Name :- ${admin.mName}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Phone no. :- ${admin.uPhoneNo}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Address :- ${admin.uAddress}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;" >
	D.O.B :- ${admin.dob}
	</div>

</body>
</html>
<% 
	}
%>