



var debateGameController = function($scope, $http){
	$scope.forRows = [];

	$scope.againstRows = [];

	$('#againstText').prop('readonly', true).val('');
	$('#forText').prop('readonly', true).val('');

	$scope.addAgainstComments = function(event){

		if(event.keyCode == 13){

			$( "#againstForm" ).submit(function(e) {
				e.preventDefault();
			});

			$scope.againstData = $('#againstText').val();
			$scope.againstRows.push($scope.againstData);

			$( "#againstText" ).val('');
		}

	};

	$scope.addForComments = function(event){

		if(event.keyCode == 13){

			$( "#forForm" ).submit(function(e) {
				e.preventDefault();
			});

			$scope.forData = $('#forText').val();
			$scope.forRows.push($scope.forData);

			$( "#forText" ).val('');
		}

	};

	$scope.selectTeam = function(team){
		$('#selectOneTeam').hide();
		$('#teamB').css("padding-left", "400px");
		if(team=='A'){
			$('#againstText').prop('readonly', true).val('');
			$('#forText').prop('readonly', false).val('');
		}else if(team=='B'){
			$('#forText').prop('readonly', true).val(''); 
			$('#againstText').prop('readonly', false).val('');
		}
	};


};