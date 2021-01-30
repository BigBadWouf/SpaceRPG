extends Area2D

var radius = 50;
var shape = null;
var nb_planet = int(round(rand_range(1, 5)));


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print(self)
	
func _init():
	add_to_group("Stars");	
	shape = CircleShape2D.new();
	shape.radius = radius;
		
#func make_connection():
	#print("calculate way")
	#var ns = get_tree().get_nodes_in_group("Stars");
	#for s in ns:
	#	if s == self:
	#		continue;
	#	var dist = self.position.distance_to(s.position);
	#	if dist < max_dist:
	#		near_stars.push_back({"system": s, "distance": dist});
	#near_stars.sort_custom(SortByDistance, "sort_ascending");

	#if connected.size() < strenght-1:
	#	for i in range(strenght-1 - connected.size()):
	#		if i < near_stars.size():
	#			if near_stars[i].system.connected.size() < near_stars[i].system.strenght:
	#				connected.append(near_stars[i]);
	#				near_stars[i].system.connected.append({"system": self, "distance": near_stars[i].distance})	
	
func _ready():
	set_process_input(true)
	$StarCollisionShape.shape = shape;
	#$StarSprite.texture = false;
	
func _process(_delta):
	pass
