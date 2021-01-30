class_name Ship
extends Node2D

signal updateStats

# Internal
var texture : Texture;
var thumbnail : Image;
var size : Vector2 = Vector2.ZERO;
var collision_shape : Shape;

# General
#var name : String = "None";
var ship_class : int = 0;
var ship_category : int = 0;
var ship_faction : int = 0;

# Commercial
var base_cost : int = 0;
var devaluation_per_month : int = 0;
var current_cost : int = 0;

# Base Specs
var mass : int = 0;
var max_freight : int = 0;
var max_seat : int = 0;
var max_modifier : int = 0;

# Thruster
var max_speed : int = 0;
var acceleration : float = 0;
var rotation_speed : float = 0;
var RCS : float = 0;

# Shield
var max_shield : int = 0;
var per_second_generation_shield : float = 0;
var current_shield : float = 0;

# Heat
var max_heat : int = 0;
var per_second_heat : float = 0;
var current_heat : float = 0;
var per_second_cooling : float = 0;

# Carburant
var max_fuel : int = 0;
var current_fuel : int = 0;
var per_jump_fuel : int = 0;

# Energy
var max_energy : int = 0;
var per_second_generation_energy : float = 0;
var current_energy : float = 0;
var per_second_consumation_energy : float = 0;

# weapons 
var max_turret : int = 0;
var turret_amunition = [];
var max_gun : int = 0;
var gun_amunition = [];

enum CLASS {
	Transport,
	Freighter,
	Fighter,
	Miner,
	Mixed
}

enum CATEGORY {
	Light,
	Medium,
	Heavy
}

func _process(delta):
	if current_energy < max_energy: current_energy += per_second_generation_energy * delta;
	else: current_energy = max_energy;
	if current_energy > 0: current_energy -= per_second_consumation_energy * delta;
	else: current_energy = 0
	if current_heat < max_heat: current_heat += per_second_heat * delta;
	else: current_heat = max_heat;
	if current_heat > 0: current_heat -= per_second_cooling * delta;
	else: current_heat = 0;
	emit_signal("updateStats")

