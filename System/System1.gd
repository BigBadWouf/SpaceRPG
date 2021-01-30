extends Node2D


var planet_scene = preload("res://System/Planet.tscn");

var star = null;
var nb_planet = 0
var planets = []

func _init():
	pass;
	
func _ready():
	randomize();
	set_process_input(true)
	
	nb_planet = int(round(rand_range(1, 5)));
	for i in range(nb_planet):
		var orbit_angle = deg2rad(rand_range(0, 360))
		var dir = Vector2(sin(orbit_angle), cos(orbit_angle));
		var orbit_radius = rand_range(100, 600);
		var pos = dir.normalized() * orbit_radius;
		var p = planet_scene.instance();
		p.orbit_speed = 5;
		p.orbit_angle = orbit_angle;
		p.orbit_radius = orbit_radius;
		p.position = pos;
		p.scale = Vector2(0.1, 0.1)
		planets.append(p)
		add_child(p); 

func _physics_process(delta):
	for p in planets:
		var next_orbit_angle = p.orbit_angle + deg2rad(p.orbit_speed * delta);
		var next_orbit_position = Vector2(sin(next_orbit_angle), cos(next_orbit_angle));
		next_orbit_position = next_orbit_position.normalized() * p.orbit_radius
		p.position = next_orbit_position;
		p.orbit_angle = next_orbit_angle;
