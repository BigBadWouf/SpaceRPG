class_name BLI300
extends Item

var max_energy := 100;

func _init():
	# General
	name = "Battery 100 Li";
	item_class = Item.CLASS.Energy;
	item_category = Item.CATEGORY.Light;
	item_faction = 0;

	# Commercial
	cost = 12000;
	devaluation_per_month = 5;
	used_modifier = 6;
