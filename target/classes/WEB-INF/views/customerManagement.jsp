<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Customer Management page</h1>
			<p class="lead">Here you can see the customers</p>
		</div>

		<table class="table table-hover table-striped">
			<tr class="bg-success">
			    <th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Username</th>
				<th>Enabled</th>
				<th></th>
			</tr>
			
			<c:forEach items="${customerList}" var="customer">
			<tr>
			    <td>${customer.customerName}</td>
				<td>${customer.customerEmail}</td>
				<td>${customer.customerPhone}</td>
				<td>${customer.username}</td>
				<td>${customer.enabled}</td>
			</tr>
            </c:forEach>
		</table>


	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>