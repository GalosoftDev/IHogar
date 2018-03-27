<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Admin</h1>
			<p class="lead">Here you can admin the site</p>
		</div>
		
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				Welcome: ${pageContext.request.userPrincipal.name} | 
				<a href="<c:url value="/j_spring_security_logout" />" >Logout</a>
			</h2>
		</c:if>
		
		<h3><a href= "<c:url value="/admin/productInventory"/>" >Product Inventory</a></h3>
		<p class="lead">Here you can admin the product</p>
		
		<h3><a href= "<c:url value="/admin/customer"/>" >Customer Management</a></h3>
		<p class="lead">Here you can admin your customers</p>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>