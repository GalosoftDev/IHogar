<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Inventory</h1>
			<p class="lead">Create, delete and modify products</p>
		</div>

		<table class="table table-hover table-striped">
			<tr>
			    <th>Picture</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Units</th>
				<th></th>
			</tr>
			
			<c:forEach items="${products}" var="product">
			<tr>
			    <td><img alt="picture" src= "<c:url value="/resources/images/${product.productId}.png"/>" width="100px"></td>
				<td>${product.productName}</td>
				<td>${product.productDes}</td>
				<td>${product.productPrice}</td>
				<td>${product.productUnits}</td>
				<td><a href="<spring:url value="/product/viewProduct/${product.productId}" />" > 
				     <span class="glyphicon glyphicon-asterisk"/> </a>
				    <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />" >                          
				     <span class="glyphicon glyphicon-remove"/> </a>
				    <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />" >                          
				     <span class="glyphicon glyphicon-pencil"/> </a> 
				</td>     
			</tr>
            </c:forEach>
		</table>
		
		<h3><a href= "<c:url value="/admin/product/addProduct"/>" >Add Product</a></h3>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>