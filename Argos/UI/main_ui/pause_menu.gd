extends Control
var save_menu = preload("res://UI/main_ui/file_select.tscn")

func _ready() -> void:
	MenuManager.add_listener(self)

func handle_escape():
	MenuManager.remove_listener(self)
	Close.play()
	self.queue_free()
	
func _on_continue_pressed() -> void:
	Close.play()
	handle_escape()



func _on_save_pressed() -> void:
	Eject.play()
	get_tree().current_scene.add_child(save_menu.instantiate())
	handle_escape()


func _on_options_pressed() -> void:
	$Open.play()


func _on_main_menu_pressed() -> void:
	$Eject.play()
	handle_escape()
	get_tree().change_scene_to_file("res://Main Menu/MainMenu.tscn")
