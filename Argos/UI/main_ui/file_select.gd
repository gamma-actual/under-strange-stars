extends Control
@onready var escape_menu = preload("res://UI/main_ui/pause_menu.tscn")
func _ready() -> void:
	MenuManager.add_listener(self)

func handle_escape():
	MenuManager.remove_listener(self)
	Close.play()
	self.queue_free()
	
