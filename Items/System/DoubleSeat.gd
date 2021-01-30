class_name DoubleSeat
extends Item

var max_seat := 2;

func _init():
	# General
	name = "Double Passenger Seat";
	item_class = Item.CLASS.System;
	item_category = Item.CATEGORY.Light;
	item_faction = 0;

	# Commercial
	cost = 3000;
	devaluation_per_month = 1;
	used_modifier = 2;
