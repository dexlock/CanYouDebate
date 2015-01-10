

var loginPageController = function($scope , $http) {

	$scope.adminIdRight = false;
	$scope.userDetailsRight = false;
	$('#adminId').focus();
	
	
	
	
	$scope.adminTabs = [ {
		title : 'Admin',
		id : 'admin'
	}, {
		title : 'User',
		id : 'gamer'
	} ];

	$scope.currentLoginTabId = "admin";

	$scope.loginTabSelect = function(tabToSelect) {
		
		
		if (tabToSelect.id == "admin") {
			$('#admin').show();
			$('#gamer').hide();
			$('#adminId').focus();


			
		
		} else if (tabToSelect.id == "gamer") {
			$('#admin').hide();
			$('#gamer').show();
			$('#userName').focus();



		}
		$scope.currentLoginTabId = tabToSelect.id;
	};

	$scope.isActiveTab = function(tabId) {

		return tabId == $scope.currentLoginTabId;
	};

	/* Validate Form */

	$scope.adminLogin = function(event){

		if($('#adminId').val() == ""){

			$scope.adminIdRight = true;

			event.preventDefault();

		}
	};
	$scope.userLogin = function(event){

		if($('#userName').val() == ""){
			$scope.dynamicStyle = {
					'margin-bottom' :'2px'
			};
			
			$scope.userDetailsRight = true;
			$scope.userDetailsErrorMessage = 'Alright !! but user name required for login..';
			event.preventDefault();
		}else if($('#password').val() == ""){
			$scope.dynamicStyle = {
					'margin-bottom' :'2px'
			};
			$scope.userDetailsRight = true;
			$scope.userDetailsErrorMessage = 'Ooppsss.. enter the password too..';
			event.preventDefault();
		};
	};
};






















/*$('button').click(function(){
if(this.id == 'adminBtn'){
	if($('#adminId').val() == ""){
		$scope.wrongMessage = 'ID cannot be empty';
		$scope.adminIdRight = true;
		return false;
	}


}
else if(this.id == 'userBtn'){
	if($('#userName').val() == ""){
		alert('User Name cannot be empty');
		return false;
	}
	else if($('#password').val() == ""){
		alert('Password cannot be empty');
		return false;
	}

}
});*/
