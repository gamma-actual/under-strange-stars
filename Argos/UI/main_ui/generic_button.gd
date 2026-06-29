extends TextureButton
@export var label_text: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ButtonLabel.text = label_text


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	$ButtonLabel.add_theme_font_size_override("font_size", 50)


func _on_mouse_exited() -> void:
	$ButtonLabel.add_theme_font_size_override("font_size", 40)
