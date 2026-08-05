extends TextureButton

@export var texture_icon: Texture2D
@export var speed := 10 # higher = faster 

@export var button_in: Vector2 = Vector2(-80, 0)
@export var button_out: Vector2 = Vector2(-10, 0)

@onready var button_location: Vector2 = offset_transform_position
var button_destination: Vector2

func _ready() -> void:
	$Icon.texture = texture_icon
	button_destination = button_in
	button_location = button_in
	offset_transform_position = button_location

func _process(delta: float) -> void:
	# Smoothly move toward destination
	button_location = button_location.lerp(button_destination, 1.0 - exp(-speed * delta))
	offset_transform_position = button_location

func _on_mouse_entered() -> void:
	button_destination = button_out

func _on_pressed() -> void:
	button_destination = button_in

func _on_mouse_exited() -> void:
	button_destination = button_in
