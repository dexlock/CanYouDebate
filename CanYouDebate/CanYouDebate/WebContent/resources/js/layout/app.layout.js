var endPoint = "UserEndPoint";
var serviceURL = applicationContextpath + "/ServiceGateway/service";

var DebateApp = angular.module('DebateApp',['ngRoute']);

/*application.factory('topicNameService', ['$rootScope',function($rootScope){

	$rootScope.topicToReturn = '';

	return {

		topicNameServiceSetter :  function(topicName){

			$rootScope.topicToReturn = topicName;
			alert('topicName'+topicName);


		},
		topicNameServiceGetter : function(){
			return $rootScope.topicToReturn;
		}
	};
}]);


DebateApp.config(['$routeProvider', '$locationProvider',
         function($routeProvider, $locationProvider) {
           $routeProvider
             .when('/Discussion', {
               templateUrl: applicationContextpath+'/jsp/modules/discussion/discussion-home.jsp',
               controller: 'discussMainController',
             });
            
           $locationProvider.html5Mode(true);
       }])
       .controller('discussMainController', ['$scope', function($route) {
    	   $scope.check = prompt('a name');
       }]);
 

/*application.factory("appLoading", ['$rootScope', function($rootScope)
		{
			var timer = null;
			return {
		      loading : function(message) 
		      {
		    	clearTimeout(timer);
		    	
		    	var bodyHeight = jQuery("body").height();
		    	var appHeight  = jQuery(".app-container").height() + 100;
		    	var height     = bodyHeight;
		    	if(appHeight > height)
				{
		    		height = appHeight;
				}
		    	jQuery(".backgroundFade").height(height);
		    	
		    	$rootScope.app_Status      = 'loading';
		        $rootScope.loadingMessage  = message;
		        if(!$rootScope.$$phase) $rootScope.$apply();
		      },
		      ready : function(delay) 
		      {
		          function removeBlur() 
		           {
		        	  $rootScope.app_Status = 'ready';
		              if(!$rootScope.$$phase) $rootScope.$apply();
		           }

		           clearTimeout(timer);
		           if(delay == null) 
		           {
		        	 delay = 50; 
		           }
		           timer   = setTimeout(removeBlur , delay);
		      }
		    };
		}]);*/

var mainBodyController = function($scope, $http, $rootScope, $location) {


	$scope.init = function(){
		
		$('.carousel').carousel();
		
		
	};

	$scope.session = false;
	
	$scope.searchClicked = false;
	
	var sessionValue = $('#checkSession').val();

	if(sessionValue==''){
		$scope.session = false;
	}else{
		$scope.session = true;
	}


	$scope.getHome = function(){
		alert('ok in getHome');
	};

	$scope.openLoginModal = function(){
		$('#loginModal').modal('show');
	};

	/* Login/Sign in Tabs Starts : */

	$scope.loginTabs =  [{title: 'Login', id:'login'},{title:'Sign Up', id:'signup'}];

	$scope.currentLoginTabId  = "login";

	$scope.loginTabSelect = function(tabToSelect){
		if(tabToSelect.id=="login")
		{
			$('#login').show();
			$('#signup').hide();
		}else
			if(tabToSelect.id=="signup")
			{
				$('#login').hide();
				$('#signup').show();

			}
		$scope.currentLoginTabId = tabToSelect.id;
	};

	$scope.isActiveTab = function(tabId){

		return tabId == $scope.currentLoginTabId;
	};

	/* Login/Sign in Tabs Ends. */

	$scope.signUpUser = function(){
		if(!$scope.confirmPasswordValidation())
		{
			$('#alertPassword').innerHTML = 'Please enter same password';
		}
		else
		{

			$http({
				method : 'POST',
				url : serviceURL,
				data : {
					'endPoint' : endPoint,
					'serviceMethod' : 'addUser',
					'parameters' : {
						'userName' : $scope.userName,
						'password' : $scope.password,
						'userEmail' : $scope.userEmail

					}}})
					.success(function(serviceOutputVO){
						alert("sucess");
					})
					.error(function(error)
							{

							}) ; 
		}
	};


	$scope.confirmPasswordValidation = function(){
		var flag = true;

		if(($scope.confirmPassword.length ==  $scope.password.length )&& $scope.confirmPassword!= $scope.password )
		{
			flag = false;
		}
		else if($scope.confirmPassword.length !=  $scope.password.length){
			flag = false;

		}

		return flag;
	};

	$scope.openUserDetailsModal = function(){
		$('#userDetailsModal').modal('show');
	};



	$scope.searchTheWebsite = function(){
		$scope.searchClicked = true;
		/*$('#searchWebsite').mouseout(function(){
			$scope.searchClicked = false;
		});*/
		
	};
	
	
	$scope.init();

};









































/*$scope.navList =  [{title: 'Home', id:'home'},{title:'About Us', id:'aboutus'},
                   {title:'Contact Us', id:'contactus'},{title:'Sign in', id:'signin'}];

$scope.currentLoginTabId = "home";

$scope.getNavigation = function(nav){
	if(nav.id=="home")
		{	
			window.location.href = "/home";
		}else 
			if(nav.id=="aboutus")
				{	
					window.location.href = "/aboutus";
				}
	$scope.currentLoginNavId = nav.id;
};

$scope.isActiveNav = function(tabId){

	return tabId == $scope.currentLoginTabId;
};*/


