extends Node2D

const max_size = Vector2(.52 , .52)
const minimum_size = Vector2(0.5 , 0.5)
@export var breathing_rate:float = 0.0 
@onready var splotch1 = $SplotchTest1
@onready var splotch2 = $SplotchTest2
@onready var splotch3 = $SplotchTest3
@onready var splotch4 = $SplotchTest4
@onready var splotch5 = $SplotchTest5
var start_size = Vector2(randf_range(.5 , .52) , randf_range(.5 , .52))
var directions = {} # an empty dictionary to store the directions

func breathe(node, breathing_rate):
	if not directions.has(node.name): # if the node's name is not in the dictionary, add it with a default direction of 1
		directions[node.name] = 1
	if node.scale >= max_size:
		directions[node.name] = -1 
	elif node.scale <= minimum_size:
		directions[node.name] = 1
	node.scale += Vector2((breathing_rate * directions[node.name]) , (breathing_rate * directions[node.name])) # use the direction from the dictionary
# Called when the node enters the scene tree for the first time.
func _ready():
	splotch1.scale = start_size
	splotch2.scale = start_size
	splotch3.scale = start_size
	splotch4.scale = start_size
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	breathe(splotch1 , 0.006 * delta)
	breathe(splotch2 , 0.005 * delta)
	breathe(splotch3 , 0.004 * delta)
	breathe(splotch4 , 0.002 * delta)
func _on_button_pressed():
	pass
