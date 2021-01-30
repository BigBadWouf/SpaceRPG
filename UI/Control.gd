extends Control

onready var Player = get_tree().get_root().get_node("World").get_node("Player");
onready var ship_name = $VBoxContainer/Name/ShipName
onready var ship_class = $VBoxContainer/Class/ShipClass
onready var ship_category = $VBoxContainer/Category/ShipCategory
onready var ship_mass = $VBoxContainer/Mass/ShipMass
onready var ship_cost = $VBoxContainer/Cost/ShipCost
onready var ship_deval = $VBoxContainer/Devaluation/ShipDevaluation
onready var ship_current_cost = $VBoxContainer/CurrentCost/ShipCurrentCost
onready var ship_seat = $VBoxContainer/Seat/ShipSeat
onready var ship_freight = $VBoxContainer/Freight/ShipFreight
onready var ship_modifier = $VBoxContainer/Modifier/ShipModifier
onready var ship_fuel = $VBoxContainer/Fuel/ShipFuel
onready var ship_energy = $VBoxContainer/Energy/ShipEnergy

func _ready():
	Player.ship.connect("updateStats", self, "update_stats");
	

func update_stats():
	#General
	ship_name.text = Player.ship.name;
	ship_class.text = Ship.CLASS.keys()[Player.ship.ship_class];
	ship_category.text = Ship.CATEGORY.keys()[Player.ship.ship_category];
	ship_mass.text = Player.ship.mass as String;
	# Commercial
	ship_cost.text = Player.ship.base_cost as String;
	ship_deval.text = Player.ship.devaluation_per_month as String;
	ship_current_cost.text = Player.ship.current_cost as String;
	# Capacities
	ship_seat.text = "%s / %s" % [str(Player.ship.current_used_seat), str(Player.ship.max_seat)]
	ship_freight.text = "%s / %s" % [str(Player.ship.current_used_freight), str(Player.ship.max_freight)]
	ship_modifier.text = "%s / %s" % [str(Player.ship.current_used_modifier), str(Player.ship.max_modifier)]
	# Carburant
	ship_fuel.text = "%s / %s" % [str(Player.ship.current_fuel), str(Player.ship.max_fuel)]
	ship_energy.text = "%s / %s" % [str(Player.ship.current_energy), str(Player.ship.max_energy)]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
