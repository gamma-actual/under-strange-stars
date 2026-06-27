extends TextureButton
@export var label_text: String
var player_name = PlayerStats.player_name
@export var time_played: String
@export var player_location: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$NewGameLabel.text = label_text
	$PlayerNameLabel.text = player_name
	$TimePlayedLabel.text = time_played
	$PlayerLocationLabel.text = player_location


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	$NewGameLabel.text = label_text + " <"
	$NewGameLabel.add_theme_font_size_override("font_size", 60)
	$PlayerNameLabel.add_theme_font_size_override("font_size", 50)
	$TimePlayedLabel.add_theme_font_size_override("font_size", 50)
	$PlayerLocationLabel.add_theme_font_size_override("font_size", 50)


func _on_mouse_exited() -> void:
	$NewGameLabel.text = label_text
	$NewGameLabel.add_theme_font_size_override("font_size", 50)
	$PlayerNameLabel.add_theme_font_size_override("font_size", 40)
	$TimePlayedLabel.add_theme_font_size_override("font_size", 40)
	$PlayerLocationLabel.add_theme_font_size_override("font_size", 40)
