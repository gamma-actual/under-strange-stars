extends Node

var supplies = 0
var max_supplies = 100
var ship_health = 100
var ship_max_health = 100
var morale = 100
var armor = 0
var armor_buff = 0.00

func add_supplies(amount):
	supplies += amount + (amount * scout_perk_buff)
func remove_supplies(amount):
	supplies-= amount	
func expand_supplies(amount):
	max_supplies += amount
func give_engineer_perk():
	engineer_perk += 1
	max_supplies = 100 + (100 * engineer_perk)
func give_scout_perk():
	scout_perk += 1
	scout_perk_buff += 0.05
func meteor(amount):
	ship_health -= amount - (amount * armor_buff)
	morale -= 5
func repair_ship():
		ship_health += 5
		if ship_health > ship_max_health:
			ship_health = ship_max_health
		supplies -= 20
func upgrade_ship():
	ship_health += 10
	ship_max_health += 10
	armor += 5
	armor_buff+= 0.05
	supplies -= 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
