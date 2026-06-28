extends VBoxContainer
var button_offset: Vector2 = Vector2(-80.295, 0)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	$JournalButton.offset_transform_position = Vector2(0, 0)
	$IDButton.offset_transform_position = Vector2(0, 0)
	$GearButton.offset_transform_position = Vector2(0, 0)


func _on_mouse_exited() -> void:
	$JournalButton.offset_transform_position = button_offset
	$IDButton.offset_transform_position = button_offset
	$GearButton.offset_transform_position = button_offset
