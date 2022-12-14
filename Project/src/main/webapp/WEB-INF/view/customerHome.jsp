<%@page import="java.io.File"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@page import="model.Category"%>
<%@page import="service.CategoryServiceImpl"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="service.ProductServiceImpl"%>
<%@page import="service.ProductService"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<% 

	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("userName") != null){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="False"%>
<%@include file="../../resources/header/customerheadercart.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	

		
	
	<div class="row" style="margin-top: 50px;
    margin-left: 27px;">
		<div class=col-md-3>
			<div class="list-group">
				<a href="customerHome" class="list-group-item list-group-item-action active"  aria-current="true" style="background-color:#b4b8be;">
    				All Products
  				</a>
				<%
					CategoryDAOImpl catWrapper = (CategoryDAOImpl) request.getAttribute("catWrapper");
					for(Category c : catWrapper.categories){
						%>
							<a href="customerHome?cid=<%=c.getcId() %>" class="list-group-item list-group-item-action"><%=c.getcName() %></a>
						<% 
					}
				%>
  				
			</div>
		</div>
		
		<div class="col-md-9">
			<div class="container">
			<c:if test = "${not empty error_message}">
			<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
		    <div class="alert alert-danger alert-dismissible fade show" role="alert">
				${error_message}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
	    </c:if>
				<div class="row">
					<%
						ProductDAOImpl prodWrapper = (ProductDAOImpl) request.getAttribute("productsWrapper");
						for (Product prod : prodWrapper.products) {
					%>
					<div class="col-md-4">
						<div class="card mt-2 shadow-sm"
							style="width: 250px; height: 430px;">
                			<img src="resources/images/products/<%=prod.getpPic() %>" class="card-img-top" alt="Soemthing went wrong while loding image" height="250px">
                			<div class="card-body">
                    			<h5 class="card-title text-truncate"><%= prod.getpName() %></h5>
                    			<p class="card-text text-truncate"><%=prod.getpDesc() %></p>
								<form action="addCart">
									<input type="hidden" name="pId" value="<%=prod.getpId()%>">
									<label for="quantity" class="form-label">Quantity</label>
									<input type="number" style="width: 45px" name="quantity" class="form-number-input" id="quantity" min="1" max="<%=prod.getpQuantity()%>" value="1">
	                    			<button type="submit" class="btn btn-outline-primary">Add to Cart</button>								
								</form>
                			</div>
            			</div>
					</div>
					<%} %>
				</div>
			</div>
	
		</div>	
	</div>
</body>
</html>
<% 
	}
%>