HT.Meals = {
	newMeal: function(){
		//HT.Meals.autoComplete();
		HT.Meals.addMealTypeFoods();
	},
	
	// autoComplete: function(){
// 		$("#meal-title").autocomplete({source: ["breakfast", "lunch", "dinner", "snack"]});
// 	},
	
	addMealTypeFoods: function(){
		if ($("#meal-type").val() === "Breakfast") {
			console.log("Breaky time ...");
		}
	}
	
}