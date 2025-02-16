extends Node2D

var jump = false
var rrrandom = Vector2(randf_range(-0.3 , 0.3), randf_range(-0.3, 0.3))
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func shiprumble(node):
	node.position += Vector2(randf_range(-0.3 , 0.3), randf_range(-0.3, 0.3))
	if node.position  >= Vector2(0.3 , 0.3):
		node.position = Vector2(0.1 , 0.1)
	if node.position <= Vector2(-0.3 ,- 0.3):
		node.position = Vector2(-0.1, -0.1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$one.rotate(0.0 * delta)
	$two.rotate(-0.1 * delta)
	$three.rotate(0.1 * delta)
	$four.rotate(-0.02 * delta)
	shiprumble($four)
	shiprumble($one)


func _on_texture_button_mouse_entered():
	pass
