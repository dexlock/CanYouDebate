<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Next Generation</title>


<!--  JS Files  -->

<script type="text/javascript"
	src="${contextPath}/resources/ng-resource/js/angular.min.js"></script>

<script type="text/javascript"
	src="${contextPath}/resources/ng-resource/js/jquery.min.js"></script>

<script type="text/javascript"
	src="${contextPath}/resources/js/login/app.login.js"></script>

<!-- CSS Files  -->

<link rel=StyleSheet
	href="${contextPath}/resources/ng-resource/css/bootstrap.min.css"
	type="text/css" />

<link rel=StyleSheet
	href="${contextPath}/resources/css/login/ui.login.css" type="text/css" />

</head>
<body
	onload="document.getElementById('userForm').reset();document.getElementById('adminForm').reset()"
	ng-controller="loginPageController">
	<div class="container-fluid" style="margin-left: 450px">
		<div class="hero-unit">


			<h2 class="modal-header"
				style="padding: 0; font-family: Lucida Console; font-size: 25.5px;">Enter
				the Dungeon</h2>

			<div id="adminTabs">
				<ul class="nav nav-tabs" style="margin-bottom: 3px">
					<li ng-repeat="tab in adminTabs"
						ng-class="{active:isActiveTab(tab.id)}"><a
						ng-click="loginTabSelect(tab)" data-toggle="tab"
						style="cursor: pointer;">{{tab.title}}</a></li>
				</ul>
			</div>
			<div>
				<div id="admin">
					<form id="adminForm" method="post"
						action="${contextPath}/AdminHome" ng-submit="adminLogin($event)"
						autocomplete="on">
						<div class="row" style=" margin-left: -30px;margin-bottom: 6px">
							<div class="col-md-12">
								<div class="col-md-8">
									<input class="form-control" id="adminId" type="text"
										style="width: 290px; font-family: Lucida Console"
										name="adminId" placeholder="Admin..? id then.." value="">
								</div>
								<div class="col-md-2">
									<span class="icon-user"></span>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div ng-show="adminIdRight">Sir please enter the id..</div>
						</div>
						<button id="adminBtn" class="btn  btn-manual" type="submit">Hell
							Yeah..!!</button>
					</form>
				</div>

				<div id="gamer" style="display: none">
					<form id="userForm" method="post" action="${contextPath}/Home"
						autocomplete="on" ng-submit="userLogin($event)">
						<div id="gamer" class="row" style="margin-bottom: 0px; margin-left: -30px;">
							<div class="col-md-12">
								<div class="col-md-8">
									<input class="form-control" id="userName" type="text"
										style="width: 290px; font-family: Lucida Console"
										name="userDetails[]" data-toggle="tooltip"
										data-placement="bottom" title="username cannot be empty"
										placeholder="User Name..." value="">
								</div>
								<div class="col-md-2">
									<i class="icon-user"></i>
								</div>
							</div>

							<div class="col-md-12" style="margin:6px 0px 6px 0px">
								<div class="col-md-8">
									<input id="password" class="form-control" type="password"
										style="width: 290px; font-family: Lucida Console"
										name="userDetails[]" data-toggle="tooltip"
										data-placement="bottom" title="password cannot be empty"
										placeholder="Password..." value="">
								</div>
								<div class="col-md-2">
									<i class="icon-secret"></i>
								</div>
							</div>

						</div>
						<div class="row-fluid" ng-style="dynamicStyle">
							<div ng-show="userDetailsRight">{{userDetailsErrorMessage}}</div>
						</div>
						<button id="userBtn" class="btn  btn-manual" type="submit">Yes Please..!!</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>