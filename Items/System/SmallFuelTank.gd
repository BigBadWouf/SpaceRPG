class_name SmallFuelTank
extends Item

var max_fuel := 100;

func _init():
	# General
	name = "Small Fuel Tank";
	item_class = Item.CLASS.System;
	item_category = Item.CATEGORY.Light;
	item_faction = 0;

	# Commercial
	cost = 8000;
	devaluation_per_month = 1;
	used_modifier = 5;
