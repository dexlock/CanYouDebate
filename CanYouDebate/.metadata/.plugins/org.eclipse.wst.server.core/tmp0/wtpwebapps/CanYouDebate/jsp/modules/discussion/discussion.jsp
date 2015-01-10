 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 

<script type="text/javascript" src="${contextPath}/resources/js/debate/app.discuss.js"></script>

<div  ng-controller="discussMainController">
	<input class="form-control" ng-model="check" type="text"> hi there in the discussion
	page
{{check}}
</div>