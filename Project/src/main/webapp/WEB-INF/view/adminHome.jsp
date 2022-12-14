<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("userName") != null){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="False"%>
<%@include file="../../resources/header/adminHeader.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
a{text-decoration: none; }

</style>
</head>
<body>

	<c:if test = "${not empty success_message}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
		    <div class="alert alert-success alert-dismissible fade show" role="alert">
				${success_message}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
	</c:if>
	

	<div class="container mt-4 text-center">
		<h2>Admin Home page</h2>
		<div class="row p-2">
		
			<div class="col-md-8">
				<a href="i_product">
					<div class="card m-3" style="height: 25vh">
					<div class="card-body">
					<img class="m-4" alt="" src="resources/images/plus-circle.svg" style="height: 50px;width: 50px;"/><br>
					<h4>Add Product</h4> </div>
				</div>
				</a>
			</div>
			</div>
<div class="row p-4">
			<div class="col-md-8">
				<a href="category">
					<div class="card m-3" style="height: 25vh">
					<div class="card-body">
					<img class="m-4" alt="" src="resources/images/folder-plus.svg" style="height: 50px;width: 50px;"/><br>
					<h4>Add Category</h4></div>
				</div>
				</a>
			</div>
			
		</div>
		
		<div class="row p-2">
		
			<div class="col-md-8">
				<a href="viewCustomer">
					<div class="card m-3" style="height: 25vh;">
						
						<div class="card-body">
							<img class="m-4" alt="" src="resources/images/users.svg" style="height: 50px;width: 50px;"/><br>
							<h4>View Customers</h4>
						</div>
					</div>
				</a>
			</div>
			</div>
			<div class="row p-2">
			<div class="col-md-8">
				<a href="product_list">
					<div class="card m-3" style="height: 25vh">
					<div class="card-body"><img class="m-4" alt="" src="resources/images/package.svg" style="height: 50px;width: 50px;"/><br>
					<h4>View Products</h4>
					</div>
				</div>
				</a>
			</div>
			</div>
			<div class="row p-2">
			<div class="col-md-8">
				<a href="viewCustomer">
					<div class="card m-3" style="height: 25vh">
					<div class="card-body"><img class="m-4" alt="" src="resources/images/truck.svg" style="height: 50px;width: 50px;"/><br>
					<h4>View Orders</h4>
					</div>
				</div>
				</a>
			</div>
			</div>
		</div>
	</div>

	
</body>
</html>
<% 
	}
%>