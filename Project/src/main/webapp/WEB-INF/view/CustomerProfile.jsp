<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("userName") != null){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="False"%> 

<%@include file="../../resources/header/customerHeader.jsp" %>

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
	<h2>Customer Profile</h2>
	</div>
	<div style="display: flex;
    justify-content: center;     margin-top: 50px;">Name :- ${customer.uName}</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	E-mail :- ${customer.emailId}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	First Name :- ${customer.fName}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Last Name :- ${customer.lname}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Middle Name :- ${customer.mName}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Phone no. :- ${customer.uPhoneNo}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;">
	Address :- ${customer.uAddress}
	</div>
	<br>
	<div style="display: flex;
    justify-content: center;" >
	D.O.B :- ${customer.dob}
	</div>
	
	
</body>
</html>
<% 
	}
%>