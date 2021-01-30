class_name Item
extends Resource

# Internal
var thumbnail : Image;
var size := Vector2.ZERO;

# General
var name := "None";
var item_class : int = 0;
var item_category : int = 0;
var item_faction : int = 0;

# Commercial
var cost : int = 0;
var devaluation_per_month : int = 0;
var used_modifier : int = 0;

enum CLASS {
	Cooling,
	Energy,
	Engine,
	Shield,
	System,
	Tool,
	Weapon
}

enum CATEGORY {
	Light,
	Medium,
	Heavy
}
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
