extends Control


var character_sheet = preload ("res://UI/character_sheet.tscn")
# Called when the node enters the scene tree for the first time.
@export var move_speed = 0.00

func move_up (node, move_speed):
	if node.position > Vector2(0,0):
		node.position -= Vector2(0,1) * move_speed

func _ready():
	$Panel.position = Vector2(0, 1200)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_up($Panel , move_speed)


func _on_button_pressed():
	self.queue_free()


func _on_engineer_pressed():
	add_child(character_sheet.instantiate())
