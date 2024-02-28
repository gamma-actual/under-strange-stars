extends Node2D
const max_size = Vector2(2 , 2)
const minimum_size = Vector2(1.4 , 1.4)
const electric_bugaloo = Vector2 (1.5 , 1.5)
var direction = 1
#@export var speed:float = 0.0
#@export var breathing_rate:float = 0.0 
@onready var static1 = $StaticRust1
@onready var static2 = $StaticRust2
@onready var static3 = $StaticRust3
func grow (node, float):
	if node.scale <= minimum_size:
		node.scale += Vector2(float , float)
	
func breathe(node, breathing_rate):
	if node.scale >= max_size:
		direction = -1
	elif node.scale <= electric_bugaloo:
		direction = 1
	node.scale += Vector2((breathing_rate * direction) , (breathing_rate * direction))
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	grow($StaticRust1 , (0.9 * delta))
	grow($StaticRust2 , (0.95 * delta))
	grow($StaticRust3 , (1 * delta))
	breathe($StaticRust1 , (0.015 * delta))
	breathe($StaticRust2 , (0.02 * delta))
	breathe($StaticRust3 , (0.01 * delta))


func _on_button_pressed():
	$StaticRust1.visible = true
	$StaticRust2.visible = true
	$StaticRust3.visible = true
	$StaticRust1.scale = Vector2(0.01 , 0.01)
	$StaticRust2.scale = Vector2(0.01 , 0.01)
	$StaticRust3.scale = Vector2(0.01 , 0.01)
