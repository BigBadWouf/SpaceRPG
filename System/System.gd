class_name System
extends Resource

var star_scene = preload("res://System/Star.tscn");

var position = Vector2.ZERO;
var name = null;
var star = null;
var max_planets = 5;
var planets = [];
	
func _init():
	star = star_scene.instance();
	#generate name
	pass
	
func set_position(new_position : Vector2) -> void:
	self.position = new_position;
	star.position = self.position;

func get_position() -> Vector2:
	return self.position;
	
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
