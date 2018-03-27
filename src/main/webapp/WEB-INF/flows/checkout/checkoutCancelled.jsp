<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<div class="container-wrapper">
		<div class="container">
			<section>
				<div class="jumbotron">
					<div class="container">
						<h1 class ="alert alert-danger">Checkout Cancelled</h1>
						<p>Your checkout process is cancelled</p>
					</div>
				</div>
			</section>
			
		    <section class="container" >
		   
		    		<p><a href="<spring:url value="/product/productList" />" class="btn btn-primary">Products</a></p>
		    		
		    </section>
		</div>
	</div>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>