extends Node2D

var starspeed = null

func resetstars(node):
	if node.scale <= Vector2(0.01, 0.01):
		node.scale = Vector2(2 , 2)
func shrinkstars(node):
	node.scale -=Vector2(0.0005, 0.0005)

# Called when the node enters the scene tree for the first time.
func _ready():
	$StartScreenMockup2005.scale = Vector2(1 ,1)
	$StartScreenMockup2006.scale = Vector2(1.5 ,1.5)
	$StartScreenMockup2007.scale = Vector2(2 ,2)
	$StartScreenMockup2008.scale = Vector2(2.5 ,2.5)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	resetstars($StartScreenMockup2005)
	resetstars($StartScreenMockup2006)
	resetstars($StartScreenMockup2007)
	resetstars($StartScreenMockup2008)
	shrinkstars($StartScreenMockup2005)
	shrinkstars($StartScreenMockup2006)
	shrinkstars($StartScreenMockup2007)
	shrinkstars($StartScreenMockup2008)
