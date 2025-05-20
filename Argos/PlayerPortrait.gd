extends Node2D


var clothesone = ["res://Character_Portrait_Assets/Clothes_01/body_01_egghead.png", "res://Character_Portrait_Assets/Clothes_01/body_01_miner.png", "res://Character_Portrait_Assets/Clothes_01/body_01_overseer.png", "res://Character_Portrait_Assets/Clothes_01/body_01_starchild.png"]
var clothestwo = ["res://Character_Portrait_Assets/Clothes_02/body_02_egghead.png", "res://Character_Portrait_Assets/Clothes_02/body_02_miner.png", "res://Character_Portrait_Assets/Clothes_02/body_02_overseer.png", "res://Character_Portrait_Assets/Clothes_02/body_02_starchild.png"]
var clothesthree = ["res://Character_Portrait_Assets/Clothes_03/body_03_egghead.png", "res://Character_Portrait_Assets/Clothes_03/body_03_miner.png", "res://Character_Portrait_Assets/Clothes_03/body_03_overseer.png", "res://Character_Portrait_Assets/Clothes_03/body_03_starchild.png"]
var clothesfour = ["res://Character_Portrait_Assets/Clothes_04/body_04_egghead.png", "res://Character_Portrait_Assets/Clothes_04/body_04_miner.png", "res://Character_Portrait_Assets/Clothes_04/body_04_overseer.png", "res://Character_Portrait_Assets/Clothes_04/body_04_starchild.png"]
var clothesfive = ["res://Character_Portrait_Assets/Clothes_05/body_05_egghead.png", "res://Character_Portrait_Assets/Clothes_05/body_05_miner.png", "res://Character_Portrait_Assets/Clothes_05/body_05_overseer.png", "res://Character_Portrait_Assets/Clothes_05/body_05_starchild.png"]
var clothessix = ["res://Character_Portrait_Assets/Clothes_06/body_06_egghead.png", "res://Character_Portrait_Assets/Clothes_06/body_06_miner.png", "res://Character_Portrait_Assets/Clothes_06/body_06_overseer.png", "res://Character_Portrait_Assets/Clothes_06/body_06_starchild.png"]
var clothingindex = 0

var bodytype = [clothesone , clothestwo , clothesthree , clothesfour , clothesfive , clothessix]
var clothes = bodytype
var bodyindex = 0

var skinone = ["res://Character_Portrait_Assets/Skin_01/skin_01_color_1.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_2.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_3.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_4.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_5.png"]
var skintwo = ["res://Character_Portrait_Assets/Skin_02/skin_02_color_1.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_2.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_3.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_4.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_5.png"]
var skinthree = ["res://Character_Portrait_Assets/Skin_03/skin_03_color_1.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_2.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_3.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_4.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_5.png"]
var skinfour = ["res://Character_Portrait_Assets/Skin_04/skin_04_color_1.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_2.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_3.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_4.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_5.png"]
var skinfive = ["res://Character_Portrait_Assets/Skin_05/skin_05_color_1.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_2.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_3.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_4.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_5.png"]
var skinsix = ["res://Character_Portrait_Assets/Skin_06/skin_06_color_1.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_2.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_3.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_4.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_5.png"]
var skintype = [skinone , skintwo , skinthree , skinfour , skinfive , skinsix]
var skin = skintype
var skinindex = 0

var glasses = ["res://Character_Portrait_Assets/Accesories/accessories 0.png" , "res://Character_Portrait_Assets/Accesories/accessories 1.png", "res://Character_Portrait_Assets/Accesories/accessories 2.png"]
var glassesindex = 0
var head = ["res://Character_Portrait_Assets/Head/head 1.png" , "res://Character_Portrait_Assets/Head/head 2.png" , "res://Character_Portrait_Assets/Head/head 3.png" , "res://Character_Portrait_Assets/Head/head 4.png" , "res://Character_Portrait_Assets/Head/head 5.png"]
var headindex = 0
var hair = ["res://Character_Portrait_Assets/Hair/hair 1.1.png", "res://Character_Portrait_Assets/Hair/hair 1.2.png", "res://Character_Portrait_Assets/Hair/hair 1.3.png", "res://Character_Portrait_Assets/Hair/hair 1.4.png", "res://Character_Portrait_Assets/Hair/hair 1.5.png", "res://Character_Portrait_Assets/Hair/hair 2.1.png", "res://Character_Portrait_Assets/Hair/hair 2.2.png", "res://Character_Portrait_Assets/Hair/hair 2.3.png", "res://Character_Portrait_Assets/Hair/hair 2.4.png", "res://Character_Portrait_Assets/Hair/hair 2.5.png", "res://Character_Portrait_Assets/Hair/hair 3.1.png", "res://Character_Portrait_Assets/Hair/hair 3.2.png", "res://Character_Portrait_Assets/Hair/hair 3.3.png", "res://Character_Portrait_Assets/Hair/hair 3.4.png", "res://Character_Portrait_Assets/Hair/hair 3.5.png", "res://Character_Portrait_Assets/Hair/hair 4.1.png", "res://Character_Portrait_Assets/Hair/hair 4.2.png", "res://Character_Portrait_Assets/Hair/hair 4.3.png", "res://Character_Portrait_Assets/Hair/hair 4.4.png", "res://Character_Portrait_Assets/Hair/hair 4.5.png", "res://Character_Portrait_Assets/Hair/hair 5.1.png", "res://Character_Portrait_Assets/Hair/hair 5.2.png", "res://Character_Portrait_Assets/Hair/hair 5.3.png", "res://Character_Portrait_Assets/Hair/hair 5.4.png", "res://Character_Portrait_Assets/Hair/hair 5.5.png", "res://Character_Portrait_Assets/Hair/hair 6.1.png", "res://Character_Portrait_Assets/Hair/hair 6.2.png", "res://Character_Portrait_Assets/Hair/hair 6.3.png", "res://Character_Portrait_Assets/Hair/hair 6.4.png", "res://Character_Portrait_Assets/Hair/hair 6.5.png", "res://Character_Portrait_Assets/Hair/hair 7.1.png", "res://Character_Portrait_Assets/Hair/hair 7.2.png", "res://Character_Portrait_Assets/Hair/hair 7.3.png", "res://Character_Portrait_Assets/Hair/hair 7.4.png", "res://Character_Portrait_Assets/Hair/hair 7.5.png", "res://Character_Portrait_Assets/Hair/hair 8.1.png", "res://Character_Portrait_Assets/Hair/hair 8.2.png", "res://Character_Portrait_Assets/Hair/hair 8.3.png", "res://Character_Portrait_Assets/Hair/hair 8.4.png", "res://Character_Portrait_Assets/Hair/hair 8.5.png", "res://Character_Portrait_Assets/Hair/hair 9.1.png", "res://Character_Portrait_Assets/Hair/hair 9.2.png", "res://Character_Portrait_Assets/Hair/hair 9.3.png", "res://Character_Portrait_Assets/Hair/hair 9.4.png", "res://Character_Portrait_Assets/Hair/hair 9.5.png", "res://Character_Portrait_Assets/Hair/hair 10.1.png", "res://Character_Portrait_Assets/Hair/hair 10.2.png", "res://Character_Portrait_Assets/Hair/hair 10.3.png", "res://Character_Portrait_Assets/Hair/hair 10.4.png", "res://Character_Portrait_Assets/Hair/hair 10.5.png"]
var hairindex = 0
var beard = ["res://Character_Portrait_Assets/Beard/facial hair 0.png" , "res://Character_Portrait_Assets/Beard/facial hair 1.png", "res://Character_Portrait_Assets/Beard/facial hair 2.png", "res://Character_Portrait_Assets/Beard/facial hair 3.1.png", "res://Character_Portrait_Assets/Beard/facial hair 3.2.png", "res://Character_Portrait_Assets/Beard/facial hair 3.3.png", "res://Character_Portrait_Assets/Beard/facial hair 3.4.png", "res://Character_Portrait_Assets/Beard/facial hair 3.5.png", "res://Character_Portrait_Assets/Beard/facial hair 4.1.png", "res://Character_Portrait_Assets/Beard/facial hair 4.2.png", "res://Character_Portrait_Assets/Beard/facial hair 4.3.png", "res://Character_Portrait_Assets/Beard/facial hair 4.4.png", "res://Character_Portrait_Assets/Beard/facial hair 4.5.png"]
var beardindex  = 0
var nose = ["res://Character_Portrait_Assets/Nose/nose 1.png", "res://Character_Portrait_Assets/Nose/nose 2.png", "res://Character_Portrait_Assets/Nose/nose 3.png", "res://Character_Portrait_Assets/Nose/nose 4.png", "res://Character_Portrait_Assets/Nose/nose 5.png", "res://Character_Portrait_Assets/Nose/nose 6.png", "res://Character_Portrait_Assets/Nose/nose 7.png"]
var noseindex = 0
var mouth = ["res://Character_Portrait_Assets/Mouth/mouth 1.png", "res://Character_Portrait_Assets/Mouth/mouth 2.png", "res://Character_Portrait_Assets/Mouth/mouth 3.png", "res://Character_Portrait_Assets/Mouth/mouth 4.png", "res://Character_Portrait_Assets/Mouth/mouth 5.png", "res://Character_Portrait_Assets/Mouth/mouth 6.png", "res://Character_Portrait_Assets/Mouth/mouth 7.png", "res://Character_Portrait_Assets/Mouth/mouth 8.png", "res://Character_Portrait_Assets/Mouth/mouth 9.png", "res://Character_Portrait_Assets/Mouth/mouth 10.png"]
var mouthindex = 0
var eyes = ["res://Character_Portrait_Assets/Eyes/eyes 1.png", "res://Character_Portrait_Assets/Eyes/eyes 2.png", "res://Character_Portrait_Assets/Eyes/eyes 3.png", "res://Character_Portrait_Assets/Eyes/eyes 4.png", "res://Character_Portrait_Assets/Eyes/eyes 5.png", "res://Character_Portrait_Assets/Eyes/eyes 6.png", "res://Character_Portrait_Assets/Eyes/eyes 7.png", "res://Character_Portrait_Assets/Eyes/eyes 8.png", "res://Character_Portrait_Assets/Eyes/eyes 9.png", "res://Character_Portrait_Assets/Eyes/eyes 10.png", "res://Character_Portrait_Assets/Eyes/eyes 11.png"]
var eyesindex = 0
var brow = ["res://Character_Portrait_Assets/Eyebrows/eyebrows 1.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 2.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 3.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 4.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 5.png"]
var browindex = 0


func idkbro():
	$Glasses.texture = load(glasses[glassesindex])
	$Clothing.texture = load(bodytype[bodyindex][clothingindex])
	$Skin.texture = load(skintype[bodyindex][skinindex])
	$Head.texture = load(head[headindex])
	$Hair.texture = load(hair[hairindex])
	$Beard.texture = load(beard[beardindex])
	$Nose.texture = load(nose[noseindex])
	$Mouth.texture = load(mouth[mouthindex])
	$Eyes.texture = load(eyes[eyesindex])
	$Brows.texture = load(brow[browindex])
func bodyup():
	bodyindex = (bodyindex + 1) % bodytype.size()
	clothes = bodytype[bodyindex]
	skin = skintype[bodyindex]
	$Skin.texture = load (skintype[bodyindex][skinindex])
	$Clothing.texture = load(bodytype[bodyindex][clothingindex])
func bodydown():
	bodyindex = (bodyindex - 1) % bodytype.size()
	clothes = bodytype[bodyindex]
	skin = skintype[bodyindex]
	$Skin.texture = load (skintype[bodyindex][skinindex])
	$Clothing.texture = load(bodytype[bodyindex][clothingindex])
func glassesup():
	glassesindex = (glassesindex + 1) % glasses.size()
	$Glasses.texture = load(glasses[glassesindex])
func glassesdown():
	glassesindex = (glassesindex - 1) % glasses.size()
	$Glasses.texture = load(glasses[glassesindex])

func clothupone():
	clothingindex = (clothingindex + 1) % clothes.size()
	$Clothing.texture = load(clothes[clothingindex])
func clothdownone():
	clothingindex = (clothingindex - 1) % clothes.size()
	$Clothing.texture = load(clothes[clothingindex])
	
func skinupone():
	skinindex = (skinindex + 1) % skin.size()
	$Skin.texture = load(skin[skinindex])
func skindownone():
	skinindex = (skinindex - 1) % skin.size()
	$Skin.texture = load(skin[skinindex])

func headupone():
	headindex = (headindex + 1) % head.size()
	$Head.texture = load(head[headindex])
func headownone():
	headindex = (headindex - 1) % head.size()
	$Head.texture = load(head[headindex])
	
func hairupone() :
	hairindex = (hairindex + 1) % hair.size()
	$Hair.texture = load(hair[hairindex])
func hairdownone() :
	hairindex = (hairindex - 1) % hair.size()
	$Hair.texture = load(hair[hairindex])

func beardupone() :
	beardindex = (beardindex + 1) % beard.size()
	$Beard.texture = load(beard[beardindex])
func beardownone() :
	beardindex = (beardindex - 1) % beard.size()
	$Beard.texture = load(beard[beardindex])

func noseup():
	noseindex = (noseindex + 1) % nose.size()
	$Nose.texture = load(nose[noseindex])
func nosedown():
	noseindex = (noseindex - 1) % nose.size()
	$Nose.texture = load(nose[noseindex])

func mouthup() :
	mouthindex = (mouthindex + 1) % mouth.size()
	$Mouth.texture = load(mouth[mouthindex])
func mouthdown() :
	mouthindex = (mouthindex - 1) % mouth.size()
	$Mouth.texture = load(mouth[mouthindex])

func eyesup():
	eyesindex = (eyesindex + 1) % eyes.size()
	$Eyes.texture = load(eyes[eyesindex])
func eyesdown():
	eyesindex = (eyesindex - 1) % eyes.size()
	$Eyes.texture = load(eyes[eyesindex])

func browsup() :
	browindex = (browindex + 1) % brow.size()
	$Brows.texture = load(brow[browindex])
func browsdown() :
	browindex = (browindex - 1) % brow.size()
	$Brows.texture = load(brow[browindex])

func _ready():
	idkbro()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	pass


func _on_clothing_down_pressed() :
	clothdownone()


func _on_clothing_up_pressed() :
	clothupone()


func _on_skindown_pressed() -> void:
	skindownone()


func _on_skin_up_pressed() -> void:
	skinupone()


func _on_head_down_pressed() -> void:
	headownone()


func _on_head_up_pressed() -> void:
	headupone()


func _on_hair_down_pressed() -> void:
	hairdownone()


func _on_hair_up_pressed() -> void:
	hairupone()


func _on_beard_down_pressed() -> void:
	beardownone()


func _on_beard_up_pressed() -> void:
	beardupone()


func _on_nose_down_pressed() -> void:
	nosedown()


func _on_nose_up_pressed() -> void:
	noseup()


func _on_mouth_down_pressed() -> void:
	mouthdown()


func _on_mouth_up_pressed() -> void:
	mouthup()


func _on_eyes_down_pressed() -> void:
	eyesdown()


func _on_eyes_up_pressed() -> void:
	eyesup()


func _on_brows_up_pressed() -> void:
	browsup()


func _on_brows_down_pressed() -> void:
	browsdown()


func _on_glasses_down_pressed() -> void:
	glassesdown()


func _on_glasses_up_pressed() -> void:
	glassesup()

func _on_bodydown_pressed() -> void:
	bodydown()

func _on_bodyup_pressed() -> void:
	bodyup()
