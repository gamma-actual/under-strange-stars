extends Sprite2D

# Called when the node enters the scene tree for the first time.
@onready var on = true
@onready var shrink_rate = 0.0001
func shrink():
	for child in get_children():
		child.scale -= Vector2(shrink_rate ,shrink_rate)
func shake(node) :
	if on == true:
		node.position += Vector2(randf_range(-0.3 , 0.3), randf_range(-0.3, 0.3))
	else: return
func rumbling ():
	for child in get_children():
		shake(child)
func explode1(): #attempt 1
	for child in get_children():
		child.position += Vector2(randf_range(-2 , 2), randf_range(-2, 2))
func explode2(): #attempt 2
	var num_iterations = 10  # Set the desired number of iterations
	for i in range(num_iterations):
			for child in get_children():
				child.position += Vector2(randf_range(-1, 1), randf_range(-1, 1))

func explode():
	if on == false:
		var iteration = 1
		while iteration < 20:
			for child in get_children():
				child.scale += Vector2 (0.005,0.005)
				child.position +=Vector2(randf_range(-0.8 , 0.8), randf_range(-0.8, 0.8))
				iteration += 1
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	shrink()
	rumbling()
	explode()


func _on_new_game_pressed() -> void:
	on = false
