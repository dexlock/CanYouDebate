var EndPoint = "DebateHomeEndPoint";
var serviceURL = applicationContextpath + "/ServiceGateway/service";



var moduleMainController = function($scope, $http,$location){


	$scope.init = function(){
		$scope.getDebateCaytegoryList();
	};
	 
	
	/*----------------- Home Tabs Start -----------------------*/

	$scope.homeTabs =  [{title: 'Debate', id:'debate'},{title:'Discussion', id:'discussion'},
	                    {title:'Opinion Poll', id:'opinionPoll'},{title: 'Website Gyaan', id:'ayntka'}];

	$scope.currentHomeTabId  = "debate";
	

	$scope.homeTabSelect = function(tabToSelect){
		if(tabToSelect.id=="debate")
		{
			$('#debate').show();
			$('#discussion').hide();
			$('#opinionPoll').hide();
			$('#ayntka').hide();
			
		}else
			if(tabToSelect.id=="discussion")
			{
				$('#debate').hide();
				$('#discussion').show();
				$('#opinionPoll').hide();
				$('#ayntka').hide();
				$('#discussion').load(applicationContextpath+'/jsp/modules/discussion/discussion.jsp');

			}else
				if(tabToSelect.id=="opinionPoll")
				{
					$('#debate').hide();
					$('#discussion').hide();
					$('#opinionPoll').show();
					$('#ayntka').hide();
					$('#opinionPoll').load(applicationContextpath+'/jsp/modules/opinion/opinion-poll.jsp');

				}else
					if(tabToSelect.id=="ayntka")
					{
						$('#debate').hide();
						$('#discussion').hide();
						$('#opinionPoll').hide();
						$('#ayntka').show();
						$('#ayntka').load(applicationContextpath+'/jsp/modules/websitegyaan/website-gyaan.jsp');
					}

		$scope.currentHomeTabId = tabToSelect.id;
	};

	$scope.isHomeActiveTab = function(tabId){

		return tabId == $scope.currentHomeTabId;
	};

		/*---------------------Home Tabs End----------------*/

		/*---------------------Debate Page------------------*/
	
	$scope.getDebateCaytegoryList = function(){

		$http({
			method : 'POST',
			url : serviceURL,
			data : {
				'endPoint' : EndPoint,
				'serviceMethod' : 'getDebateCaytegoryList',
				'parameters' : {}
			}
			})
			.success(function(serviceOutputVO) {
					$scope.debateCategoryList = serviceOutputVO.parameters.DebateCategoryList;
					$scope.currentDCTabId = $scope.debateCategoryList[0].debateCategoryId;
					$scope.categoryName = $scope.debateCategoryList[0].debateCategoryName;
					$scope.getTopicList();
			})
			.error(function(error){
					
				alert('Something went terribly wrong');
			}); 
	};
	
	$scope.getTopicList = function(){
		
		$http({
			method : 'POST',
			url : serviceURL,
			data : {
				'endPoint' : EndPoint,
				'serviceMethod' : 'getTopicList',
				'parameters' : {
					'categoryId' :  $scope.currentDCTabId
		
				}
			}
			})
			.success(function(serviceOutputVO) {
					$scope.DebateTopicList = serviceOutputVO.parameters.DebateTopicList;
			})
			.error(function(error){
					
				alert('Something went terribly wrong');
			}); 
		
	};


	$scope.startDebate = function(index , event){
		
		var topicName = $scope.DebateTopicList[index].topicName;
		
		if(topicName!='')
		{
			$('#selectTopic').val(topicName.toString());
			alert($('#selectTopic').val());
			
		}else {
			alert('Something went wrong...We are working on that');
			event.preventDefault();
		}
	};

	
	


	
	$scope.debateCategoryTabSelect = function(tabToSelect){
		$scope.currentDCTabId = tabToSelect.debateCategoryId;
		$scope.categoryName = tabToSelect.debateCategoryName;
			
	};

	$scope.isDCActiveTab = function(tabId){
		return tabId == $scope.currentDCTabId;
	};
	
	

	/* Debate Categories Tabs End */



	$scope.searchDebates = function(){
		alert('submitted');
	};

	$scope.check = 'set in main controller';

	$scope.init();
};






