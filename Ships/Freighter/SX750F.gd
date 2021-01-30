class_name SX750F 
extends Ship

# utilisation
var current_used_freight := 0;
var current_freight = [];
var current_used_seat := 0;
var current_seat = [];
var current_used_modifier := 0;
var current_modifier = [];

func _init():
	
	name = "SX 750 F"
	ship_class = Ship.CLASS.Freighter;
	ship_category = Ship.CATEGORY.Light;
	
	base_cost = 80000;
	devaluation_per_month = 5;
	current_cost = base_cost;
	
	mass = 350;
	max_freight = 70;
	max_seat = 1;
	max_modifier = 130;
	current_used_seat += 1;
	
	max_heat = 50;
	
	current_modifier.append(FireAigle1.new());
	current_modifier.append(FireAigle1.new());
	current_modifier.append(SmallFuelTank.new());
	current_modifier.append(SmallFuelTank.new());
	current_modifier.append(SmallFuelTank.new());
	current_modifier.append(DoubleSeat.new());
	current_modifier.append(BLI300.new());
	current_modifier.append(WCI.new());
	current_modifier.append(StarterShield.new());
	
	update_modifier();
		
func update_modifier():
	for modifier in current_modifier:
		match modifier.item_class:
			Item.CLASS.Cooling:
				current_used_modifier += modifier.used_modifier;
				per_second_consumation_energy += modifier.per_second_consumation_energy;
				per_second_cooling += modifier.per_second_cooling;
			Item.CLASS.Energy:
				current_used_modifier += modifier.used_modifier;
				max_energy += modifier.max_energy
			Item.CLASS.Engine:
				current_used_modifier += modifier.used_modifier;
				acceleration += modifier.acceleration
				per_second_heat += modifier.per_second_heat
				per_second_generation_energy += modifier.per_second_generation_energy
				per_jump_fuel += modifier.per_jump_used_fuel
			Item.CLASS.Shield:
				current_used_modifier += modifier.used_modifier;
				max_shield += modifier.max_shield;
				per_second_heat += modifier.per_second_heat;
				per_second_consumation_energy += modifier.per_second_consumation_energy
				per_second_generation_shield += modifier.per_second_generation_shield;
			Item.CLASS.System:
				current_used_modifier += modifier.used_modifier;
				if "max_fuel" in modifier:
					max_fuel += modifier.max_fuel
				if "max_seat" in modifier:
					max_seat += modifier.max_seat
			Item.CLASS.Tool:
				pass;
			Item.CLASS.Weapon:
				pass;

