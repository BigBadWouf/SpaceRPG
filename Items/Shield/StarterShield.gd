class_name StarterShield
extends Item

var max_shield := 50;
var per_second_heat := 1;
var per_second_consumation_energy := 2.5;
var per_second_generation_shield := 10;

func _init():
	# General
	name = "Starter Shield Minimal";
	item_class = Item.CLASS.Shield;
	item_category = Item.CATEGORY.Light;
	item_faction = 0;

	# Commercial
	cost = 25000;
	devaluation_per_month = 5;
	used_modifier = 10;
