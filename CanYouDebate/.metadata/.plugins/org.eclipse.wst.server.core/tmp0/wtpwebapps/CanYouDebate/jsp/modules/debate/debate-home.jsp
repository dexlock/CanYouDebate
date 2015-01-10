
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div ng-controller="moduleMainController"
	style="margin: 43px -10px 0px -10px;">

	<div id="homeTabs" style="background-color: #F8F8F8">

		<ul class="nav nav-tabs nav-justified" role="tablist">
			<li ng-repeat="tab in homeTabs"
				ng-class="{active:isHomeActiveTab(tab.id)}"><a
				ng-click="homeTabSelect(tab)" data-toggle="tab"
				style="cursor: pointer;">{{tab.title}}</a></li>

		</ul>
	</div>

	<div class="tab-content">
		<div id="debate">


			<div>
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#debateNavToCollapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#" style="padding-left: 35px">Debate</a>
						</div>
						<div class="collapse navbar-collapse" id="debateNavToCollapse">

							<ul class="nav  navbar-nav" style="padding-left: 80px;">
								<li class="active li"><a href="#">Start New Debate</a></li>
								<li class="li"><a href="#">Join Existing Debate</a></li>
							</ul>

							<form class="navbar-form navbar-left" role="search"
								style="padding-left: 100px" ng-submit="searchDebates()">
								<div class="form-group">
									<input type="text" class="form-control"
										onfocus="if(this.value=='Search debates...'){this.value=''};"
										onblur="if(this.value==''){this.value='Search debates...'};"
										onkeyup="if(event.keyCode == 13){searchDebates();}"
										placeholder="Search debates..." style="width: 350px">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
							</form>
						</div>
					</div>
				</nav>

				<div class="container-fluid">
					<div class="row" style=" padding: 0 15px 15px;">
						<div class="col-md-4"
							style="border-right: 1px solid #eee; width: 230px;">
							<div>
								<h4 style="padding-left: 5px">Debate Categories</h4>
								<hr>
								<ul class="nav nav-pills nav-stacked">
									<li ng-repeat="tab in debateCategoryList"
										ng-class="{active:isDCActiveTab(tab.debateCategoryId)}"><a
										ng-click="debateCategoryTabSelect(tab)" data-toggle="tab"
										style="cursor: pointer;">{{tab.debateCategoryName}}</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-8" style="padding-left: 30px">

							<div class="row">
								<h4 class="categoryName">{{categoryName}}</h4>
								<hr>
							</div>
							<div class="row" ng-repeat="topicList in DebateTopicList">

								<!-- Topics -->
								<div class="container-fluid topic-template">
	
									<div class="topicName">{{topicList.topicName}}</div>

									<div class="row">
										<div class="col-md-3">
											<div style="background-image: url('{{topicList.url}}');min-height: 100px;margin: 5px 0;">
												
											</div>
										</div>
										<div class="col-md-9">
											<div style="padding-bottom: 23px;">
												<p class="paragraph">{{topicList.description}}
											</div>
						 					<div class="row">
											<form  method="post" action="${contextPath}/StartDebate" ng-submit="startDebate($index, $event)">
												<div class="col-md-4"><button type="submit" style="margin-left: 30px" class="btn btn-success">Start Debate</button></div>
												<div class="col-md-4"><button ng-click="selectOpponent($index)" class="btn btn-warning">Select Opponent</button></div>
												<div class="col-md-4"><button ng-click="makeNewGroup($index)" class="btn btn-primary">Make Group</button></div>
												<input type="hidden" name="selectedTopic" id="selectTopic" >
											</form>
											</div>
										</div>
									</div>
								</div>
								<!-- Added By and Comments  -->

								<div class="container-fluid comment">
									<div class="row">
										<div class="col-md-6">
											<div>Added By</div>
										</div>
										<div class="col-md-6">
											<div>Battle Between</div>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>

		<div id="discussion"></div>
		<div id="opinionPoll"></div>
		<div id="ayntka"></div>

	</div>
</div>