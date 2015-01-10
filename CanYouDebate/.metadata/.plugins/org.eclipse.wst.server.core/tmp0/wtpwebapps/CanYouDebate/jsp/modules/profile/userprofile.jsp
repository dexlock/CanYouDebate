<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<%
	if ("${userSession}" != null) {
%>
<div ng-controller="profileController">
	<div class="container"
		style="margin-top: 50px; padding: 10px; max-height: 80px;">
		<div class="hero-unit" style="padding: 19px;">Edit Profile</div>

		<ul class="uList">
			<li><label for="displayName"
				style="float: left; padding-right: 10px">Display Name</label> <input
				type="text" class="form-control" id="displayName"
				placeholder="display name..." ng-model="userName" name="userName"></li>
			<li><input type="text" name="userEmail"
				placeholder="email address..." ng-model="userEmail" /></li>
			<li><input type="text" name="name" placeholder="real name..."
				ng-model="name" /></li>

			<li><input type="text" name="dateOfBirth"
				placeholder="DD/MM/YYYY" ng-model="dateOfBirth" /></li>
			<li><input type="text" name="website" placeholder="website.."
				ng-model="website" /></li>
			<li><input type="text" name="location"
				placeholder="display name..." ng-model="location" /></li>

			<li><input id="idAuto" ng-model="statesUsa" class="typeahead"
				type="text" placeholder="States of USA"></li>

		</ul>

	</div>




</div>


<% } %>