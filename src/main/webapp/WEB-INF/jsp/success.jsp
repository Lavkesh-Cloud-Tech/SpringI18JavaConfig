<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
	* {
		margin: 0 auto;
	}
	
	.header {
		background-color: #c4d79b;
		padding-top: 10px;
		padding-bottom: 10px;
		text-align: center;
		color: #74a2c5; 
	}
	
	.body {
		background-color:  lightyellow;
	}
	
	.form {
	}
	
	.language {
		text-align: right;
		padding-right: 20px;
	}
	
	.button {
	    background-color: yellow; /* black */
	    border: 1px solid black;
	    color: red;
	    padding: 15px 32px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    font-weight: bold;
	}
	
	.button:hover {
		background-color: lightgray;
		color: blue;
	}
	
	.error {
		color: red;
	}
</style>
</head>
<body class="body">
	<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
	<div>
		<div class="header">
			<h2><spring:message code="registrationSuccess.page.title" /></h2>
		</div>
	
		<div class="form">
		
			<div class="language">
				<a href="?lang=en">English</a> &nbsp; | &nbsp; <a href="?lang=es">Spanish</a>
			</div>
			
			<div>
				<table cellpadding="10">
					<tr>
						<td>
								<strong><spring:message code="label.registration.firstName" /></strong>
						</td>
						
						<td>
							<span>${registerUser.firstName}</span>
						</td>
					</tr>		
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.lastName" /></strong>
						</td>
						
						<td>
							<span>${registerUser.lastName}</span>
						</td>
					</tr>		
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.userName" /></strong>
						</td>
						
						<td>
							<span>${registerUser.userName}</span>
						</td>
					</tr>
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.password" /></strong>
						</td>
						
						<td>
							<span>${registerUser.password}</span>
						</td>
					</tr>
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.confirmPassword" /></strong>
						</td>
						
						<td>
							<span>${registerUser.confirmPassword}</span>
						</td>
					</tr>		
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.email" /></strong>
						</td>
						
						<td>
							<span>${registerUser.email}</span>
						</td>
					</tr>		
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.dob" /></strong>
						</td>
						
						<td>
							<span>${registerUser.dob}</span>
						</td>
					</tr>		
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.maritalStatus" /></strong>
						</td>
						
						<td>
							<span>${registerUser.maritalStatus}</span>
						</td>
					</tr>		
					
					<tr>
						<td>
								<strong><spring:message code="label.registration.indian" /></strong>
						</td>
						
						<td>
							<c:if test="${registerUser.indian eq 'Y'}">
								<span><spring:message code="label.registration.yes" /></span>
							</c:if>
							<c:if test="${ticketBooking.indian eq 'N'}">
								<span><spring:message code="label.registration.no" /></span>
							</c:if>
						</td>
					</tr>
					
					<tr>							
						<td>
							<button type="button" class="button" onclick="goToHomePage()">
								<spring:message code="label.registration.cancel"></spring:message>
							</button>
						</td>	
					</tr>					
				</table>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">	
		function goToHomePage() {
			window.location.href = '${contextPath}';
		};
	
	</script>
</body>
</html>