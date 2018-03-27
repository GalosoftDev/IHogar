<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Add products</h1>
			<p class="lead">Please fill all fields</p>
		</div>
		
		<form:form action="${pageContext.request.contextPath}/admin/product/addProduct" 
		           method="post" commandName="product" enctype="multipart/form-data">
		
			<div class="form-group">
				<label for="name">Name</label>
				<form:errors path="productName" cssStyle="color:#ff00ff"/>
				<form:input path="productName" id="name" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="productDes" id="description" class="form-control"/>
			</div>
			
			<div class="form-group" >
				<label for="status">Status: </label>
				<label class="checkbox-in-line"><form:radiobutton path="productStatus" id="status" value="Active"/>Active</label>
			    <label class="checkbox-in-line"><form:radiobutton path="productStatus" id="status" value="No-Active"/>No-Active</label>
			</div>
			
			<div class="form-group" >
				<label for="status">Condition: </label>
				<label class="checkbox-in-line"><form:radiobutton path="productCondition" id="condition" value="New"/>New</label>
			    <label class="checkbox-in-line"><form:radiobutton path="productCondition" id="condition" value="Used"/>Used</label>
			</div>
			
			<div class="form-group">
				<label for="name">Price</label>
				<form:input path="productPrice" id="price" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="units">Units</label>
				<form:input path="productUnits" id="units" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="image">Choose a picture</label>
				<form:input path="productImage" id="units" class="form-control" type="file"/>
			</div>
			
			<br><br>
			
			<input type="submit" value="submit" class="btn btn-primary">
			<a href= "<c:url value="/admin/productInventory"/>" class="btn  btn-danger">Cancel</a>
			
		</form:form>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>





