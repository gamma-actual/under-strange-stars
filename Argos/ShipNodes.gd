extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$one.rotate(0.3 * delta)
	$two.rotate(-0.5 * delta)
	$three.rotate(0.4 * delta)
	$four.rotate(0.5 * delta)
	$five.rotate(0.5 * delta)
	$six.rotate(0.5 * delta)
	$seven.rotate(0.5 * delta)
	$eight.rotate(0.5 * delta)
	$nine.rotate(0.5 * delta)
	$ten.rotate(0.5 * delta)
