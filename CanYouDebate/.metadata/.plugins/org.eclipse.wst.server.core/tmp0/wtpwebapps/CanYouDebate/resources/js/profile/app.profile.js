
function profileController($http, $scope, $rootScope){

	$scope.nameList = ['Amar','Dexlock','Sherlock','Sheldon','Leonard','Howard','Dexter','Harvey','Mike','Scofield','Penny','Amy','Ross','Joey','Monica','Rachael','Stuart'];

	$scope.autoSuggest = function(textValue , autoCompleteList){

		this.autocompleteList = autoCompleteList;
		this.textValue = textValue;
	};
	
	$('#idAuto').typeahead({
		items : 10,
		source : function(query, process){
			process($scope.nameList);
		},
		updater : function(item){
			alert(item);
			$scope.name = item;
		}
	});

};
/*

 AutoSuggest 

$( window ).load(function autoSuggestCheck(){
	var oTextbox = new AutoSuggestControl(document.getElementById("id-auto"), new StateSuggestions()); 
});
function AutoSuggestControl(oTextbox, oProvider) {
	this.provider = oProvider;
	this.textbox = oTextbox;
	this.init();
}

AutoSuggestControl.prototype.typeAhead = function (sSuggestion) {
	if (this.textbox.createTextRange || this.textbox.setSelectionRange) {
		var iLen = this.textbox.value.length; 
		this.textbox.value = sSuggestion; 
		this.selectRange(iLen, sSuggestion.length);
	}
};

AutoSuggestControl.prototype.autosuggest = function (aSuggestions) {

	if (aSuggestions.length > 0) {
		this.typeAhead(aSuggestions[0]);
	}
};

AutoSuggestControl.prototype.handleKeyUp = function (oEvent) {
	var iKeyCode = oEvent.keyCode;

	if (iKeyCode < 32 || (iKeyCode >= 33 && iKeyCode <= 46) || (iKeyCode >= 112 && iKeyCode <= 123)) {
		//ignore
	} else {
		this.provider.requestSuggestions(this);
	}
};
AutoSuggestControl.prototype.init = function () {
	var oThis = this;
	this.textbox.onkeyup = function (oEvent) {
		if (!oEvent) {
			oEvent = window.event;
		}
		oThis.handleKeyUp(oEvent);
	};
};


function StateSuggestions() {
	this.states = [
	               "Alabama", "Alaska", "Arizona", "Arkansas",
	               "California", "Colorado", "Connecticut",
	               "Delaware", "Florida", "Georgia", "Hawaii",
	               "Idaho", "Illinois", "Indiana", "Iowa",
	               "Kansas", "Kentucky", "Louisiana",
	               "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", 
	               "Mississippi", "Missouri", "Montana",
	               "Nebraska", "Nevada", "New Hampshire", "New Mexico", "New York",
	               "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", 
	               "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota",
	               "Tennessee", "Texas", "Utah", "Vermont", "Virginia", 
	               "Washington", "West Virginia", "Wisconsin", "Wyoming" 
	               ];
}

StateSuggestions.prototype.requestSuggestions = function (oAutoSuggestControl) {
	var aSuggestions = [];
	var sTextboxValue = oAutoSuggestControl.textbox.value;

	if (sTextboxValue.length > 0){
		for (var i=0; i < this.states.length; i++) { 
			if (this.states[i].indexOf(sTextboxValue) == 0) {
				aSuggestions.push(this.states[i]);
			} 
		} 
		oAutoSuggestControl.autosuggest(aSuggestions);
	} 
};
*/