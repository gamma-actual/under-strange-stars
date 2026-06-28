extends Control

@onready var lovebutton = $PanelContainer/HBoxContainer/MarginContainer2/PanelContainer/MarginContainer/VBoxContainer/HBoxContainer/LoveButton
@export var move_speed = 0.00
func move_up (node, move_speed):
	if node.position > Vector2(0,0):
		node.position -= Vector2(0,1) * move_speed

func _ready() -> void:
	MenuManager.add_listener(self)

func handle_escape():
	MenuManager.remove_listener(self)
	Close.play()
	self.queue_free()

# Called when the node enters the scene tree for the first time.
#func _ready():
	#$PanelContainer.position = Vector2(0, 1200)
	#if Engineer.romance_check == false:
		#lovebutton.disabled = true
	#if Engineer.romance_check == true:
		#lovebutton.disabled = false
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#move_up($PanelContainer, move_speed)
	#if Engineer.romance_check == false:
		#lovebutton.disabled = true
	#if Engineer.romance_check == true:
		#lovebutton.disabled = false

func _on_button_pressed():
	handle_escape()


func _on_button_2_pressed():
	Engineer.romance_check = !Engineer.romance_check
	
	
