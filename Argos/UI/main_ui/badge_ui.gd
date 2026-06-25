extends Control

var character_menu = preload("res://UI/main_ui/character_menu.tscn")
@onready var hearts_button = $MarginContainer/HBoxContainer/VBoxContainer/Hearts
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_hearts_pressed():
	add_child(character_menu.instantiate())


func _on_hearts_mouse_entered():
	pass
