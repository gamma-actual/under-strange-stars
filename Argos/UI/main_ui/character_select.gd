extends Control

@export var move_speed := 4000.0
@export var reveal_interval := 0.15
var end_pos := Vector2(1070, 7)

@onready var panels_top: Array[Control] = [
	$Background/PanelBox/CharacterBoxes/TopRow/ChesaButton,
	$Background/PanelBox/CharacterBoxes/TopRow/SebastienButton,
	$Background/PanelBox/CharacterBoxes/TopRow/CordieButton,
	$Background/PanelBox/CharacterBoxes/TopRow/GiuliaButton,
	$Background/PanelBox/CharacterBoxes/TopRow/GrigoryButton
]

@onready var panels_bottom: Array[Control] = [
	$Background/PanelBox/CharacterBoxes/BottomRow/AbbyButton,
	$Background/PanelBox/CharacterBoxes/BottomRow/FlorButton,
	$Background/PanelBox/CharacterBoxes/BottomRow/MakoaButton,
	$Background/PanelBox/CharacterBoxes/BottomRow/MateoButton,
	$Background/PanelBox/CharacterBoxes/BottomRow/ISANButton
]

var _reveal_timer: Timer
var _reveal_started := false
var _i := 0

func handle_escape():
	MenuManager.remove_listener(self)
	Close.play()
	self.queue_free()

func position_down() -> void:
	$Background/PanelBox.position = Vector2(1070, 3000)

func move_up(delta: float) -> void:
	var panel := $Background/PanelBox
	panel.position.y = max(end_pos.y, panel.position.y - move_speed * delta)

func _reveal_step() -> void:
	var top_ok := _i < panels_top.size()
	var bottom_ok := _i < panels_bottom.size()

	# Turn on at this index (interleaved)
	if top_ok:
		panels_top[_i].visible = true
	if bottom_ok:
		panels_bottom[_i].visible = true

	_i += 1

	# Stop when both rows are done
	if _i >= panels_top.size() and _i >= panels_bottom.size():
		_reveal_timer.stop()

func _ready() -> void:
	MenuManager.add_listener(self)
	position_down()

	# Start hidden
	for p in panels_top:
		p.visible = false
	for p in panels_bottom:
		p.visible = false

	_reveal_timer = Timer.new()
	_reveal_timer.one_shot = false
	_reveal_timer.wait_time = reveal_interval
	_reveal_timer.timeout.connect(_reveal_step)
	add_child(_reveal_timer)

func _process(delta: float) -> void:
	move_up(delta)

	if not _reveal_started and $Background/PanelBox.position.y <= end_pos.y:
		_reveal_started = true
		_reveal_timer.start()
