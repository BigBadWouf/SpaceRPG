class_name FireAigle1
extends Item

var per_second_heat := 2;
var per_second_generation_energy := 3.5
var per_jump_used_fuel := 100;
var acceleration := 0.05;
var max_power := 10;

func _init():
	# General
	name = "Fire Aigle 1";
	item_class = Item.CLASS.Engine;
	item_category = Item.CATEGORY.Light;
	item_faction = 0;

	# Commercial
	cost = 78000;
	devaluation_per_month = 5;
	used_modifier = 10;
