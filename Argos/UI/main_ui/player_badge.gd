extends Control
var character_select = preload("res://UI/main_ui/character_select.tscn")

func _on_journal_button_pressed() -> void:
	pass # Replace with function body.


func _on_id_button_pressed() -> void:
	add_child(character_select.instantiate())
	Eject.play()


func _on_gear_button_pressed() -> void:
	pass # Replace with function body.
