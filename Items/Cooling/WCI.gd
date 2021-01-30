class_name WCI
extends Item

var per_second_cooling := 8;
var per_second_consumation_energy := 3.5;

func _init():
	# General
	name = "WaterCooler Rang I";
	item_class = Item.CLASS.Cooling;
	item_category = Item.CATEGORY.Light;
	item_faction = 0;

	# Commercial
	cost = 6000;
	devaluation_per_month = 5;
	used_modifier = 3;
