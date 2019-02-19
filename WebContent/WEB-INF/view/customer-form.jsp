<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- reference jstl tag library -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" 
		  href="${pageContext.request.contextPath}/resources/css/customer-form.css">
</head>
<body>

<nav role='navigation'>
  <ul>
    <li><a href="http://localhost:8080/web-app-CRF/">Home</a></li>
    <li><a href="http://localhost:8080/web-app-CRF/customer/showFormAdd">Add Customer</a></li>
    <li><a href="customer/list">Customer List</a></li>
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
	
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		
		<!-- need to associate this data with customer id -->
		<form:hidden path="id"/>
		
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					
					<tr>
						<td><label>Country:</label></td>
					    <td><form:select path="country">
		<form:option value="TR" label="Turkey"/>
		<form:option value="FR" label="France"/>
		<form:option value="USA" label="United States"/>
		<form:option value="IN" label="India"/> 
		<form:option value="DE" label="Germany"/>
		</form:select></td>
		
					</tr>
					
					
					<tr>
						<td><label>Phone Number:</label></td>
						<td><form:input path="phoneNumber" /></td>
				 	
					
					</tr>
					
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
		
		<!-- Add a navigations link -->
		<div style="clear; both"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
	</div>	
	
	

</body>
</html>