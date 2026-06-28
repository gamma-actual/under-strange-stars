extends Control


var character_sheet = preload ("res://UI/main_ui/character_sheet.tscn")
# Called when the node enters the scene tree for the first time.
@export var move_speed = 0.00
const max_size = Vector2(.98 , .98)
const minimum_size = Vector2(0.96 , 0.96)
@export var breathing_rate:float = 0.0 
var start_size = Vector2(randf_range(.9 , .9) , randf_range(1.05 , 1.05))
var directions = {} # an empty dictionary to store the directions


func _ready() -> void:
	MenuManager.add_listener(self)

func handle_escape():
	MenuManager.remove_listener(self)
	Close.play()
	self.queue_free()
func move_up (node, move_speed):
	if node.position > Vector2(0,0):
		node.position -= Vector2(0,1) * move_speed

#func move_down (node, move_speed):
	#pass
	#while node.position >= Vector2(0,0):
		#node.position += Vector2(0,1) * move_speed
	#if node.position >= Vector2(0, 1200):
		#self.queue_free()
	#return
#func breathe(node, breathing_rate):
	#if not directions.has(node.name): # if the node's name is not in the dictionary, add it with a default direction of 1
		#directions[node.name] = 1
	#if node.scale >= max_size:
		#directions[node.name] = -1 
	#elif node.scale <= minimum_size:
		#directions[node.name] = 1
	#node.scale += Vector2((breathing_rate * directions[node.name]) , (breathing_rate * directions[node.name]))
	#node.modulate.a += 0.001 * directions[node.name]

#func _ready():
	#$Panel.position = Vector2(0, 1200)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	move_up($Panel , move_speed)
	#breathe($Panel/UIPanel1 , 0.003 * delta)
	#breathe($Panel/UIPanel2 , 0.002 * delta)
	#breathe($Panel/UIPanel3 , 0.003 * delta)

func _on_button_pressed():
	self.queue_free()

func _on_engineer_pressed():
	add_child(character_sheet.instantiate())


func _on_engineer_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Engineer/Label.visible = true


func _on_engineer_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Engineer/Label.visible = false


func _on_scientist_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Scientist/Label.visible = true


func _on_scientist_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Scientist/Label.visible = false


func _on_scout_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Scout/Label.visible = true

func _on_scout_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Scout/Label.visible = false

func _on_security_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Security/Label.visible = true

func _on_security_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Security/Label.visible = false

func _on_doctor_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Doctor/Label.visible = true

func _on_doctor_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Doctor/Label.visible = false

func _on_colonist_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Colonist/Label.visible = true

func _on_colonist_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Colonist/Label.visible = false

func _on_officer_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Officer/Label.visible = true

func _on_officer_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Officer/Label.visible = false

func _on_cook_mouse_entered():
	$Panel/MarginContainer/HBoxContainer/Cook/Label.visible = true

func _on_cook_mouse_exited():
	$Panel/MarginContainer/HBoxContainer/Cook/Label.visible = false

func _on_rogue_mouse_entered():
	pass

func _on_rogue_mouse_exited():
	pass

func _on_ai_mouse_entered():
	pass

func _on_ai_mouse_exited():
	pass
