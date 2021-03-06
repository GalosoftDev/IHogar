<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Register customer</h1>
			<p class="lead">Please fill all fields</p>
		</div>
		
		<form:form action="${pageContext.request.contextPath}/register" 
		           method="post" commandName="customer">
		    
		    <h3>Basic Info</h3>
	        <div class="form-group">
				<label for="name">Name</label>
				<form:input path="customerName" id="name" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="email">Email</label>
				<form:input path="customerEmail" id="email" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="phone">Phone</label>
				<form:input path="customerPhone" id="phone" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="username">User Name</label>
				<form:input path="username" id="username" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="password">Password</label>
				<form:input path="password" id="password" class="form-control"/>
			</div>
			
			<h3>Billing Address</h3>
			
			<div class="form-group">
				<label for="billingStreet">Street Name</label>
				<form:input path="billingAddress.streetName" id="billingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingApartmentNumber">Apartment Number</label>
				<form:input path="billingAddress.apartmentNumber" id="billingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingCity">City</label>
				<form:input path="billingAddress.city" id="billingCity" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingState">State</label>
				<form:input path="billingAddress.state" id="billingState" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingCountry">Street Name</label>
				<form:input path="billingAddress.country" id="billingCountry" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingZip">Zip</label>
				<form:input path="billingAddress.zipCode" id="billingZip" class="form-control"/>
			</div>
			
			<h3>Shipping Address</h3>
			<div class="form-group">
				<label for="shippinStreet">Street Name</label>
				<form:input path="shippingAddress.streetName" id="shippingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="billingApartmentNumber">Apartment Number</label>
				<form:input path="shippingAddress.apartmentNumber" id="shippingStreet" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingCity">City</label>
				<form:input path="shippingAddress.city" id="shippingCity" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippinState">State</label>
				<form:input path="shippingAddress.state" id="shippingState" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingCountry">Street Name</label>
				<form:input path="shippingAddress.country" id="shippingCountry" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="shippingZip">Zip</label>
				<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-control"/>
			</div>
			
			
			
			<input type="submit" value="submit" class="btn btn-primary">
			<a href= "<c:url value="/"/>" class="btn  btn-danger">Cancel</a>
			
		</form:form>

	</div>
</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>


