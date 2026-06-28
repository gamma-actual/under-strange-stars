extends TextureButton
@export var texture_icon: Texture2D
var button_offset: Vector2 = Vector2(-80.295, 0)
#var shake_it = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Icon.texture = texture_icon

#function to shake the lil icon needs fixing
#func shake() :
	#if shake_it == true:
		#$Icon.position += Vector2(randf_range(-0.2 , 0.2), 0)
	#elif $Icon.position < Vector2(-0.3 , 0) or $Icon.position > Vector2(0.3 , 0):
		#$Icon.position = Vector2(0 , 0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	shake()
	pass


func _on_mouse_entered() -> void:
	offset_transform_position = Vector2(0, 0)
#	shake_it = true


func _on_mouse_exited() -> void:
	offset_transform_position = button_offset
#	shake_it = false
