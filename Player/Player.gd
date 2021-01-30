extends Node2D

onready var camera = $Camera2D;

var ship = null;

var max_speed = 50;
var accel = 3;
var max_inertia = 0.5

var rotation_speed = 0;
var velocity = Vector2.ZERO;

var direction = 0;
var distance = 0;
var destination = Vector2.ZERO;

func _init():
	ship = SX750F.new();
	add_child(ship);
	print(ship.per_second_generation_energy)
	print(ship.per_second_consumation_energy)
	print(ship.per_second_heat)
	print(ship.per_second_cooling)
	pass;
	
func _ready():
	pass
		
func _unhandled_input(event):
	if event is InputEventKey and event.is_pressed():
		if event.scancode == KEY_Q:
			rotation_speed -= 0.1
		if event.scancode == KEY_D:
			rotation_speed += 0.1
		if event.scancode == KEY_Z:
			velocity -= Vector2(0, accel).rotated(rotation)
		if event.scancode == KEY_M:
			pass
							
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == 5:
			camera.zoom.x += 0.25;
			camera.zoom.y += 0.25;
		if event.button_index == 4 and $Camera2D.zoom.x > 1 and $Camera2D.zoom.y > 1:
			camera.zoom.x -= 0.25;
			camera.zoom.y -= 0.25;
			
func move_to(object):
	destination = object;
	
func _physics_process(delta):
	position += velocity * delta;
	rotation += rotation_speed * delta;
#	if destination:
#		direction = destination.position.direction_to(self.position);
#		direction = rad2deg(direction.angle());
#		rotation_degrees = lerp(rotation_degrees, direction, rotation_speed * delta);
#		if direction - rotation_degrees < 5:
#			position = position.linear_interpolate(destination.position, max_speed*delta)

func _process(delta):
	pass
