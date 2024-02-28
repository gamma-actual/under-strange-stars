extends Control

enum EventType {Material_Node, Fuel_Node, Anomaly}
enum Reward {Materials , Fuel , Anomaly}

@export var event_type: EventType
@export var image: Image
@export var event_name = str("Event Name")
@export var base_pass_chance = int()
@export_multiline var event_text = str("Event Text")
@export var quest_rewar: Reward

var event_rng = randf_range (0,99)
var event_pass = bool()


#Needs to pull the different npc perks/levels from somewhere and add them to base_pass_chance
func event_pass_check ():
	if event_rng >= base_pass_chance:
		event_pass = true
	else: event_pass = false
#Come back when you're less retarded (the idea is to add a check in case you have the miner background etc the event auto succeeds)
func auto_pass_check():
	pass

