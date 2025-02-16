extends Node
@onready var ship= $StartScreenMockup5
@onready var planet1 = $StartScreenMockup3
@onready var planet2 = $StartScreenMockup2
@onready var stars1 = $StartScreenMockup2001/StartScreenMockup2003
@onready var stars2 = $StartScreenMockup2001/StartScreenMockup2004
@onready var stars3 = $StartScreenMockup2001/StartScreenMockup2005
@onready var stars4 = $StartScreenMockup2001/StartScreenMockup2006
@onready var clouds = $StartScreenMockup2002
# Called when the node enters the scene tree for the first time.
@export var ship_speed = 0.8
@export var move_speed = 0.1
@export var star_speed = randf_range(0.001, 0.005)
@export var rumble = 0.5

func move_stars(node, star_speed):
		node.scale += Vector2(0.1, 0.1) * star_speed
		if node.scale >= Vector2 (1.5, 1.5):
			node.modulate.a += -0.005
			if node.scale >= Vector2(2, 2):
				node.scale = Vector2(1, 1)
				node.modulate.a = 1
func move_clouds(node):
	node.scale += Vector2 (0.0001 , 0.0001)

func move_ship (node, ship_speed):
	node.position -= Vector2(1,0.5) * ship_speed
func move_jupiter (node, move_speed):
	node.position += Vector2(1,-0.5) * move_speed
func move_venus (node, move_sped):
	node.position += Vector2(-1, -0.5) * move_speed
func shrink_stars (node, move_speed):
	node.scale -= Vector2(star_speed, star_speed)
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_ship (ship, ship_speed)
	move_jupiter (planet1, move_speed)
	move_venus (planet2, move_speed)
	move_stars (stars1, star_speed)
	move_stars (stars2, star_speed)
	move_stars (stars3, star_speed)
	move_stars (stars4, star_speed)
	move_stars (clouds, star_speed)


func _on_button_pressed():
	ship_speed = 6
