<%@ include file="/WEB-INF/views/templates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h2>Login with user and password</h2>
		</div>
		
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		 
		<form action="<c:url value="/j_spring_security_check"/>"  name="loginForm" method="post">
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
			<div class="form-group">
				<label for="username">User: </label>
				<input type="text" id="username" name="username" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="password">Password: </label>
				<input type="password" id="password" name="password" class="form-control"/>
			</div>
			
			<input type="submit" value="submit" class="btn btn-primary">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			
		</form>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>