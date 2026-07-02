extends Control
@onready var escape_menu = preload("res://UI/main_ui/pause_menu.tscn")
@onready var event_text = $RichTextLabel
@onready var event_name = $NoticeLabel


func handle_escape():
	MenuManager.remove_listener(self)
	Close.play()
	self.queue_free()

func _ready() -> void:
	MenuManager.add_listener(self)
	event_text.visible_characters = 0
	event_name.visible_characters = 0
	
func _process(delta) -> void:
	event_text.visible_characters += 1
	event_name.visible_characters += 1


func _on_continue_button_pressed() -> void:
	handle_escape()
