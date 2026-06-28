extends TextureButton
@export var texture_icon: Texture2D
var button_offset: Vector2 = Vector2(-80.295, 0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Icon.texture_normal = texture_icon


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	offset_transform_position = Vector2(-10, 0)


func _on_mouse_exited() -> void:
	offset_transform_position = button_offset
