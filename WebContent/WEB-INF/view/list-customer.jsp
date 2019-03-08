<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- reference jstl tag library -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>
<link rel="stylesheet" type="text/css" 
		  href="${pageContext.request.contextPath}/resources/css/customer-list.css">
</head>
<body>
	<body>
	
	<nav role='navigation'>
  <ul>
    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
    <li><a href="${pageContext.request.contextPath}/customer/showFormAdd">Add Customer</a></li>
    <li><a href="${pageContext.request.contextPath}/customer/list">Customer List</a></li>
  </ul>
</nav> 
	<br><br>
	<br><br>
	<br>
	<div id="wrapper">
		<div id="header">
			<h2>Customer Registration Page</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
		<!-- put new button : Add Customer -->
		<br><br>
		<input type="button" value="Add Customer"
			   onclick="window.location.href='showFormAdd'; return false;"
			 
		/>           	<!--Call our Spring Controller mapping  -->

		<!-- add our html table here -->
			<br><br>
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Country</th>
				<th>Phone Number</th>
				<th>Action</th>
			</tr>
			<!-- loop over and print our customers	 -->
			<c:forEach var="tempCustomer" items="${customers}">
								<!-- customers is the actual attribute name from our Spring model -->
								
			<!-- construct an "update" link with customer id -->
			<c:url var="updateLink" value="/customer/showFormUpdate">
				<c:param name="customerId" value="${tempCustomer.id}"/>
			</c:url>
			
			 <!-- Construct an "delete" link with customer id -->
			<c:url var="deleteLink" value="/customer/delete">
				<c:param name="customerId" value="${tempCustomer.id}"/>
			</c:url>
			
						<tr>
							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>
							<td>${tempCustomer.country}</td>
							<td>${tempCustomer.phoneNumber}</td>
							
									<td>
							<!-- display the update link -->
								<a href="${updateLink}">Update</a>
								|
								<a href="${deleteLink}"
								   onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
							</td>
							
							
						</tr>
			</c:forEach>
		</table>
		</div>
	</div>
</body>
</html>
