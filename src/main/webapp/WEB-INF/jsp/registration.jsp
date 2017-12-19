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
			<h2><spring:message code="registration.page.title" /></h2>
		</div>
	
		<div class="form">
		
			<div class="language">
				<a href="?lang=en">English</a> &nbsp; | &nbsp; <a href="?lang=es">Spanish</a>
			</div>
			
			<div>
				<form:form method="POST" action="${contextPath}/newuser" modelAttribute="registerUser" novalidate="novalidate">
					<table cellpadding="10">
						<tr>
							<td>
								<form:label path="firstName">
									<strong><spring:message code="label.registration.firstName" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="firstName"/>
							</td>
							
							<td>
								<form:errors path="firstName" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td>
								<form:label path="lastName">
									<strong><spring:message code="label.registration.lastName" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="lastName"/>
							</td>
							
							<td>
								<form:errors path="lastName" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td>
								<form:label path="userName">
									<strong><spring:message code="label.registration.userName" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="userName"/>
							</td>
							
							<td>
								<form:errors path="userName" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="password">
									<strong><spring:message code="label.registration.password" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="password" type="password"/>
							</td>
							
							<td>
								<form:errors path="password" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="confirmPassword">
									<strong><spring:message code="label.registration.confirmPassword" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="confirmPassword" type="password"/>
							</td>
							
							<td>
								<form:errors path="confirmPassword" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td>
								<form:label path="email">
									<strong><spring:message code="label.registration.email" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="email" type="email"/>
							</td>
							
							<td>
								<form:errors path="email" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td>
								<form:label path="dob">
									<strong><spring:message code="label.registration.dob" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:input path="dob" placeholder="dd-MMM-yyyy"/>
							</td>
							
							<td>
								<form:errors path="dob" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td>
								<form:label path="maritalStatus">
									<strong><spring:message code="label.registration.maritalStatus" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:select path="maritalStatus" items="${maritalStatusList}"/>
							</td>
							
							<td>
								<form:errors path="maritalStatus" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td>
								<form:label path="indian">
									<strong><spring:message code="label.registration.indian" /></strong>
								</form:label>
							</td>
							
							<td>
								<form:radiobutton path="indian" value="Y"/> &nbsp; <spring:message code="label.registration.yes" />
								&nbsp;
								<form:radiobutton path="indian" value="N"/> &nbsp; <spring:message code="label.registration.no" />
							</td>
							
							<td>
								<form:errors path="indian" cssClass="error" />
							</td>
						</tr>		
						
						<tr>
							<td colspan="2">
								<form:checkbox path="acceptTermsAndCondition" value="Y" />
									<spring:message code="label.registration.acceptTermsAndCondition" />	
							</td>
							
							<td>
								<form:errors path="acceptTermsAndCondition" cssClass="error" />
							</td>
						</tr>
						
						<tr>							
							<td>
								<form:button type="submit" class="button">
									<spring:message code="label.registration.submit"></spring:message>
								</form:button>
							</td>
							
							<td>
								<form:button type="button" class="button" onclick="goToHomePage()">
									<spring:message code="label.registration.cancel"></spring:message>
								</form:button>
							</td>	
						</tr>					
					</table>
				</form:form>
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