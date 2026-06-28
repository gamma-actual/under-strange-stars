extends Node2D 
@onready var ship_x = $Ship2.position.x
@onready var ship_y = $Ship2.position.y
#var ship_location = $Ship2.position
#var node 
#var ship_destination = node.position
#func update_ship_location():
#	ship_location = ship_location
func start_game():

	ShipStats.hp = 30
	ShipStats.supplies = 50
	$Event1/Event1Button.disabled = false
	$Start/StartButton.disabled = true

func first_event():
	ShipStats.hp = ShipStats.hp - 10
	ShipStats.supplies = ShipStats.supplies + 20
	$Event1/Event1Button.disabled = true
	
func _ready() -> void:

	$Label2.text = str(ShipStats.hp) + "/" + str(ShipStats.hp_max)
	$Label4.text = str(ShipStats.supplies) + "/" + str(ShipStats.supplies_max)

func _process(delta: float) -> void:
	$Label2.text = str(ShipStats.hp) + "/" + str(ShipStats.hp_max)
	$Label4.text = str(ShipStats.supplies) + "/" + str(ShipStats.supplies_max)




func _on_start_button_pressed() -> void:
	start_game()


func _on_event_1_button_pressed() -> void:
	first_event()


func _on_repair_pressed() -> void:
	ShipStats.repair_ship()
