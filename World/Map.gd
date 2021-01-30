extends Node2D

var roads = []
var generated_way = false;

func _draw():
	for road in roads:
		raw_line(road.from, road.to, Color.white, 2);
		
func _ready():
	pass 

func _process(delta):
	if not generated_way:
		var ns = get_tree().get_nodes_in_group("Stars");
		for s in ns:
			s.make_connection();
			for w in s.connected:
				#if w.connected.has(s):
				roads.append({"from": s.position, "to": w.system.position})
		generated_way = true
		update();
