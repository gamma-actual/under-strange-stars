extends TextureButton
@export var label_text: String	
@export var serial_code_text: String
	
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	$Label.text = label_text
	$SerialCodeSelected.text = serial_code_text
	$SerialCodeUnselected.text = serial_code_text
	$SerialCodeSelected.visible = false

func _on_mouse_entered() -> void:
	$Label.text = label_text + " <"
	$Label.add_theme_font_size_override("font_size", 60)
	$SerialCodeSelected.add_theme_font_size_override("font_size", 28)
	$SerialCodeUnselected.visible = false
	$SerialCodeSelected.visible = true

func _on_mouse_exited() -> void:
	$Label.text = label_text
	$Label.add_theme_font_size_override("font_size", 50)
	$SerialCodeUnselected.add_theme_font_size_override("font_size", 22)
	$SerialCodeUnselected.visible = true
	$SerialCodeSelected.visible = false
