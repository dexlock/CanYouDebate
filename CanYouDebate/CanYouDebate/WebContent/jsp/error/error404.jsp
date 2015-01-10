<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<div class="container-fluid">

	<div class="row" style="margin-top: 135px;margin-left: 2px;">
		<div>
			<h1>NOT FOUND</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-md-8 col-xs-6">
			We're sorry, we couldn't find what you were looking for. <br /> You
			can try a search or start over on the <a
				href="${contextPath}">Home Page</a>.
		</div>
		<div class="col-md-4 col-xs-6">
			<div style="width:310px;height:379px;margin-top:-80px; background-image: url('jsp/error/images/beast-404.png');"></div>
		</div>
	</div>
</div>