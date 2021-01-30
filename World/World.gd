extends Node2D

#var SX750F = preload("res://Ships/Cargo/SX750F.gd")
var star_scene = preload("res://System/Star.tscn");
var max_stars = 1000;
var systems = [];

func _ready():
	randomize()
	#for i in range(max_stars):
	#	var n_pos = Vector2(rand_range(-10000, 10000), rand_range(-10000, 10000))
	#	var system = System.new();
	#	system.set_position(n_pos);
	#	systems.append(system);
	#	add_child(system.star);
	
func _process(delta):
	pass
