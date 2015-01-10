<!DOCTYPE html>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html ng-app>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>

<tiles:insertAttribute name="customCssScripts"></tiles:insertAttribute>

</head>
<body ng-controller="mainBodyController" style="padding: 10px;">

	<input type="hidden" id="checkSession" value="${userSession}">

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		style="opacity: 0.8;">
		<div class="container-fluid ">

			<div class="navbar-header">

				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarToCollapse">
					<span class="sr-only">Toggle navigation</span>
					 <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${contextPath}/HomePage">Can You Debate</a>
			</div>
			<div class="collapse navbar-collapse" id="navbarToCollapse">

				<ul class="nav  navbar-nav pull-right">
				
					<li class="li" style=" margin-right: 180px; margin-top: 10px;">
						<div class="form-group" ng-show="searchClicked" style="background-color: #333">
							<div style="float: left;">
							<input type="text" class="form-control pull-left" id="searchWebsite"
								onfocus="if(this.value=='Search website...'){this.value=''};"
							
								placeholder="Search website..." style="width: 350px;background-color: #333;color: #777">
								
									<a href=""	ng-click = "searchClicked =false">&times;</a>
							</div>								
							<button style="margin-left:10px;background-color: #333;color: #777" type="submit" class="btn btn-default  pull-left">Submit</button>
						</div>
						
					</li>
					
					<li class="active li"><a href="${contextPath}/HomePage">Home</a></li>
					
					<li class="li"><a href="#" ng-click="searchTheWebsite()">Search</a></li>
					<li class="li"><a href="#">Contact Us</a></li>

					<li ng-show="!session" class="li"><a href=""
						data-toggle="modal" ng-click="openLoginModal()">Sign in</a></li>

					<li ng-show="session" class="dropdown" style="line-height: 35px;">
						<a href="" data-toggle="dropdown" class="dropdown-toggle"
						id="dropDown"> ${userSession.getName()}<span class="caret"></span>

					</a>

						<ul class="dropdown-menu" role="menu" aria-labelledby="dropDown">
							<li><a role="menuitem" tabindex="-1"
								href="${contextPath}/EditProfile">Edit Profile</a></li>
							<li class="divider" style="margin: 2px -3px;"></li>
							<li><a role="menuitem" tabindex="-1" href="#">Sign Out</a></li>
						</ul>
					</li>

				</ul>
			</div>
		</div>
		<!-- Container-Fluid Ends -->
	</nav>

	<!-- Header Ends -->


	<!-- Login Modal Starts -->

	<div class="modal fade" id="loginModal">

		<div class="modal-dialog" style="width: 420px">
			<div class="modal-content">
				<div class="modal-header">

					<div id="loginTabs">
						<ul class="nav nav-tabs" style="margin-bottom: -16px">
							<li ng-repeat="tab in loginTabs"
								ng-class="{active:isActiveTab(tab.id)}"><a
								ng-click="loginTabSelect(tab)" data-toggle="tab"
								style="cursor: pointer;">{{tab.title}}</a></li>

							<li><button type="button" class="close"
									style="padding-top: 6px" data-dismiss="modal">
									<span aria-hidden="true" style="padding-left: 210px;">&times;</span><span
										class="sr-only"></span>
								</button></li>
						</ul>
					</div>
				</div>

				<div class="tab-content">

					<div id="login" class="active" style="display: block">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">Login with the
								valid credentials..</h4>
						</div>
						<div class="modal-body">
							<ul class="uList">
								<li class="lim"><input class="form-control inputWidth"
									type="text" placeholder="Email" /></li>
								<li class="lim"><input class="form-control inputWidth"
									type="password" placeholder="Password" /></li>
							</ul>
						</div>
						<div class="modal-footer for-footer">

							<button type="button" class="btn btn-primary"
								style="padding: 7px 25px 7px 25px; margin: 3px 15px 3px 3px;">Login</button>
							<a href="">forgot your password</a>
						</div>
					</div>
					<div id="signup" style="display: none;">

						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">Sign up providing
								the following details....</h4>
						</div>

						<div class="modal-body">

							<ul class="uList">
								<li class="lim"><input type="text"
									class="form-control inputWidth" ng-model="userName"
									placeholder="Name : (Display name for WebSite..)" /></li>
								<li class="lim"><input type="text" ng-model="userEmail"
									class="form-control inputWidth"
									placeholder="Email : (required, will not be disclosed.)" /></li>
								<li class="lim"><div>
										<input type="password" ng-model="password"
											class="form-control inputWidth" placeholder="Password" />
									</div>
									<div id="alertPassword"></div></li>
								<li class="lim"><input type="password"
									ng-model="confirmPassword" class="form-control inputWidth"
									placeholder="Confirm Password" /></li>
							</ul>
						</div>
						<div id="warning"></div>
						<div class="modal-footer for-footer">

							<button type="button" class="btn btn-primary"
								ng-click="signUpUser()">SignUp</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cancel</button>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!-- Login Modal Ends -->

	<!-- Flicker Starts -->

	<div>
		<tiles:insertAttribute name="flicker"></tiles:insertAttribute>
	</div>

	<!-- Flicker Ends -->

	<!-- Website Detais Starts (Home Page) -->

	<div>
		<tiles:insertAttribute name="home"></tiles:insertAttribute>
	</div>


	<!-- Website Detais Starts -->

	<!-- Page Contents Starts -->


	<div>
		<tiles:insertAttribute name="pageJsCss"></tiles:insertAttribute>
	</div>


	<div>
		<tiles:insertAttribute name="pageContent"></tiles:insertAttribute>
	</div>

	<!-- Footer Starts -->

	<hr  style="margin-top: 20px;" class="featurette-divider">
	
	<div>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
	
</body>
</html>