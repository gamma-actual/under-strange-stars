extends Node2D
@export var chesa_lounge = true
@export var cordie_lounge = true
@export var deven_lounge = true
@export var flor_lounge = true
@export var giulia_lounge = true
@export var makoa_lounge = true
@export var mateo_lounge = true


@onready var chesa_pos1 = $Node2D/ChesaNeutral
const spot1 = Vector2(480, 1072)
const position2 = Vector2()
# Called when the node enters the scene tree for the first time.

func move_to_1(node):
	node.position = spot1

func _ready():
	move_to_1(chesa_pos1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
