extends Node2D

@onready var ship = $Ship2
@onready var destination = $Start

@export var speed := 0.05

func move_ship() -> void:
	var dir: Vector2 = (destination.position - ship.position)
	ship.position += dir * speed

func start_game():
	ShipStats.hp = 30
	ShipStats.supplies = 50
	#$Event1/Event1Button.disabled = false
	#$Start/StartButton.disabled = true

func first_event():
	ShipStats.hp = ShipStats.hp - 10
	ShipStats.supplies = ShipStats.supplies + 20
	#$Event1/Event1Button.disabled = true
	
func _ready() -> void:

	$Label2.text = str(ShipStats.hp) + "/" + str(ShipStats.hp_max)
	$Label4.text = str(ShipStats.supplies) + "/" + str(ShipStats.supplies_max)

func _process(delta: float) -> void:
	$Label2.text = str(ShipStats.hp) + "/" + str(ShipStats.hp_max)
	$Label4.text = str(ShipStats.supplies) + "/" + str(ShipStats.supplies_max)
	move_ship()


func _on_repair_pressed() -> void:
	ShipStats.repair_ship()

func _on_start_button_pressed() -> void:
	start_game()


func _on_event_1_button_pressed() -> void:
	first_event()
	destination = $Event1


func _on_event_21_button_pressed() -> void:
	destination = $Event21


func _on_event_22_button_pressed() -> void:
	destination = $Event22


func _on_event_31_button_pressed() -> void:
	destination = $Event31

func _on_event_32_button_pressed() -> void:
	destination = $Event32


func _on_event_33_button_pressed() -> void:
	destination = $Event33


func _on_event_34_button_pressed() -> void:
	destination = $Event34

func _on_event_41_button_pressed() -> void:
	destination = $Event41


func _on_event_42_button_pressed() -> void:
	destination = $Event42


func _on_event_43_button_pressed() -> void:
	destination = $Event43


func _on_event_44_button_pressed() -> void:
	destination = $Event44


func _on_event_51_button_pressed() -> void:
	destination = $Event51


func _on_event_52_button_pressed() -> void:
	destination = $Event52


func _on_event_61_button_pressed() -> void:
	destination = $Event61


func _on_event_62_button_pressed() -> void:
	destination = $Event62
	


func _on_event_7_button_pressed() -> void:
	destination = $Event7
