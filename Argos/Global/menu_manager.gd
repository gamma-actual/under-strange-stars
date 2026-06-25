extends Node
var escape_listeners = []
@onready var escape_menu = preload("res://UI/main_ui/pause_menu.tscn")
#adds Nodes to an array in order and then closes them with the escape key,
#gotta add these functions to the menu script
#handle_escape also works with gui buttons and does the same thing as hitting escape
#func _ready() -> void:
	#MenuManager.add_listener(self)
#
#func handle_escape():
	#MenuManager.remove_listener(self)
	#Close.play()
	#self.queue_free()
	
func handle_escape():
	if len(escape_listeners) > 0:
		var node = escape_listeners.back()
		node.handle_escape()
	else:
		get_tree().current_scene.add_child(escape_menu.instantiate())

func add_listener(node: Node):
	escape_listeners.push_back(node)
		
func remove_listener(node: Node):
	var idx = escape_listeners.rfind(node)
	if idx > -1:
		escape_listeners.remove_at(idx)


func _process(_delta):
	if Input.is_action_just_pressed("escape_button"):
		handle_escape()
