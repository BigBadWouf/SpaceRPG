extends Area2D

var textures = [	
	preload("res://Assets/Carbon_planet.png"),
	preload("res://Assets/Ice_planet.png"),
	preload("res://Assets/Jungle_planet.png"),
	preload("res://Assets/Magma_planet.png"),
	preload("res://Assets/Tempered_planet.png"),
	preload("res://Assets/Ruby_planet.png"),
	]
	
var orbit_speed = 0;
var orbit_angle = 0;
var orbit_radius = 0;
var rotation_speed = 15;

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		pass;
		#player.move_to(self);
		print(self)
		
func _init():
	pass;
	
func _ready():
	randomize();
	$PlanetSprite.texture = textures[rand_range(0, textures.size())]
	
func _physics_process(delta):
	rotation += deg2rad(rotation_speed * delta);
	
#func _process(delta):
#	pass
