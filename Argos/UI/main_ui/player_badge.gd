extends Control
var character_menu = preload("res://UI/main_ui/character_menu.tscn")

func _on_journal_button_pressed() -> void:
	pass # Replace with function body.


func _on_id_button_pressed() -> void:
	add_child(character_menu.instantiate())
	Eject.play()


func _on_gear_button_pressed() -> void:
	pass # Replace with function body.
