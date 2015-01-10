

<div ng-controller="debateGameController" onload="document.getElementById('debateHome').reset()">
	
<div id="topicTitle" class="hero-unit"
		style="margin-top: 50px; margin-bottom: 2px; padding: 19px;">
		<div class="container">
			<div class="row-fluid">
				<div class="span5">Topic for the Debate :</div>
				<div class="span7 topicFont">${SelectedTopic}</div>
			</div>
		</div>
	</div>
	
	
	<div id="debateHome">

		<div class="hero-unit" style="padding: 10px;">
			<a id="teamA" href="" style="padding-left: 300px;" ng-click="selectTeam('A')">Team A (For)</a>
			<span id="selectOneTeam"  style="padding-left: 195px;">Select A Team</span>
			<a id="teamB" href=""	style="padding-left: 225px;" ng-click="selectTeam('B')">Team B (Against)</a>
		</div>
		<div style="width: 100%; padding-left: 20px;">
			<form id="forForm">
				<div id="for" class="table-responsive for">
					<table class="table" style="height: 300px">
						<tbody>
							<tr ng-repeat="forDataList in forRows track by $index" style="height: 50px">
								<td>{{forDataList}}</td>
							</tr>
						</tbody>
					</table>
					<table>
						<tbody>
							<tr>
								<td><div class="col-md-12">
										<textarea id="forText" class="field col-md-6 form-control "
											rows="6" placeholder="Enter a short comment"
											style="resize: none" ng-keypress="addForComments($event)"></textarea>
									</div></td>
							</tr>
						</tbody>
					</table>

				</div>
			</form>

			<div class="vertical-line">
				<hr>
			</div>
			<form id="againstForm">
				<div id="against" class="table-responsive against">
					<table class="table" style="height: 300px">
						<tbody>
							<tr ng-repeat="againstDataList in againstRows track by $index"
								style="height: 50px">
								<td>{{againstDataList}}</td>
							</tr>

						</tbody>

					</table>
					<table>
						<tbody>
							<tr>
								<td><div class="span6">
										<textarea id="againstText" class="field col-md-6 form-control "
											rows="6" placeholder="Enter a short comment"
											style="resize: none" ng-keypress="addAgainstComments($event)"></textarea>
									</div></td>
							</tr>
						</tbody>
					</table>


				</div>
			</form>

		</div>

	</div>
</div>