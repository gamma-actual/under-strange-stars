extends Control
@export var event_name = $Vboxcontainer2/Label.text
var pages = {
	1: "Chesa1: Howdy, Chesa2! This is Chesa1. Isn't Santiago the greatest coder ever born?",
	2: "Chesa2: He sure is, Chesa1! Hey, I have a swell idea. Let's practice Twincest",
	3: "Cheas1: No thanks Chesa2 I am a proud christian and do not believe in such indecency"  # Add more pages if needed
}
var CurrentPage = 0
func next_line(node, page):
	node.visible_characters = 0
	node.text = page
func _ready():
	$VBoxContainer2/RichTextLabel2.text = "Narration: This is a test narration it's meant to showcase the Dialogue UI, Hopefully showing different actors speaking  accepting choices and rolling for events, using stats pulled from global scripts."
	$VBoxContainer2/RichTextLabel2.visible_characters = 0
	event_name = "el evento"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$VBoxContainer2/RichTextLabel2.visible_characters += 1
	$VBoxContainer2/RichTextLabel.visible_characters += 1


func _on_button_pressed():
	if CurrentPage < len(pages):
		CurrentPage += 1
	next_line($VBoxContainer2/RichTextLabel , pages[CurrentPage])
