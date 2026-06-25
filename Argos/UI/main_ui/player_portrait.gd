extends Control

var clothesone = ["res://Character_Portrait_Assets/Clothes_01/body_01_egghead.png", "res://Character_Portrait_Assets/Clothes_01/body_01_miner.png", "res://Character_Portrait_Assets/Clothes_01/body_01_overseer.png", "res://Character_Portrait_Assets/Clothes_01/body_01_starchild.png"]
var clothestwo = ["res://Character_Portrait_Assets/Clothes_02/body_02_egghead.png", "res://Character_Portrait_Assets/Clothes_02/body_02_miner.png", "res://Character_Portrait_Assets/Clothes_02/body_02_overseer.png", "res://Character_Portrait_Assets/Clothes_02/body_02_starchild.png"]
var clothesthree = ["res://Character_Portrait_Assets/Clothes_03/body_03_egghead.png", "res://Character_Portrait_Assets/Clothes_03/body_03_miner.png", "res://Character_Portrait_Assets/Clothes_03/body_03_overseer.png", "res://Character_Portrait_Assets/Clothes_03/body_03_starchild.png"]
var clothesfour = ["res://Character_Portrait_Assets/Clothes_04/body_04_egghead.png", "res://Character_Portrait_Assets/Clothes_04/body_04_miner.png", "res://Character_Portrait_Assets/Clothes_04/body_04_overseer.png", "res://Character_Portrait_Assets/Clothes_04/body_04_starchild.png"]
var clothesfive = ["res://Character_Portrait_Assets/Clothes_05/body_05_egghead.png", "res://Character_Portrait_Assets/Clothes_05/body_05_miner.png", "res://Character_Portrait_Assets/Clothes_05/body_05_overseer.png", "res://Character_Portrait_Assets/Clothes_05/body_05_starchild.png"]
var clothessix = ["res://Character_Portrait_Assets/Clothes_06/body_06_egghead.png", "res://Character_Portrait_Assets/Clothes_06/body_06_miner.png", "res://Character_Portrait_Assets/Clothes_06/body_06_overseer.png", "res://Character_Portrait_Assets/Clothes_06/body_06_starchild.png"]
var clothingindex = PlayerStats.clothing
var bodytype = [clothesone , clothestwo , clothesthree , clothesfour , clothesfive , clothessix]
var clothes = bodytype
var bodyindex = PlayerStats.body

var skinone = ["res://Character_Portrait_Assets/Skin_01/skin_01_color_1.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_2.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_3.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_4.png", "res://Character_Portrait_Assets/Skin_01/skin_01_color_5.png"]
var skintwo = ["res://Character_Portrait_Assets/Skin_02/skin_02_color_1.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_2.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_3.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_4.png", "res://Character_Portrait_Assets/Skin_02/skin_02_color_5.png"]
var skinthree = ["res://Character_Portrait_Assets/Skin_03/skin_03_color_1.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_2.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_3.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_4.png", "res://Character_Portrait_Assets/Skin_03/skin_03_color_5.png"]
var skinfour = ["res://Character_Portrait_Assets/Skin_04/skin_04_color_1.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_2.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_3.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_4.png", "res://Character_Portrait_Assets/Skin_04/skin_04_color_5.png"]
var skinfive = ["res://Character_Portrait_Assets/Skin_05/skin_05_color_1.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_2.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_3.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_4.png", "res://Character_Portrait_Assets/Skin_05/skin_05_color_5.png"]
var skinsix = ["res://Character_Portrait_Assets/Skin_06/skin_06_color_1.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_2.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_3.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_4.png", "res://Character_Portrait_Assets/Skin_06/skin_06_color_5.png"]
var skintype = [skinone , skintwo , skinthree , skinfour , skinfive , skinsix]
var skin = skintype
var skinindex = PlayerStats.skin

var glasses = ["res://Character_Portrait_Assets/Accesories/accessories 0.png" , "res://Character_Portrait_Assets/Accesories/accessories 1.png", "res://Character_Portrait_Assets/Accesories/accessories 2.png"]
var glassesindex = PlayerStats.glasses
var head = ["res://Character_Portrait_Assets/Head/head 1.png" , "res://Character_Portrait_Assets/Head/head 2.png" , "res://Character_Portrait_Assets/Head/head 3.png" , "res://Character_Portrait_Assets/Head/head 4.png" , "res://Character_Portrait_Assets/Head/head 5.png"]
var headindex = PlayerStats.head
var hair = ["res://Character_Portrait_Assets/Hair/hair 1.1.png", "res://Character_Portrait_Assets/Hair/hair 1.2.png", "res://Character_Portrait_Assets/Hair/hair 1.3.png", "res://Character_Portrait_Assets/Hair/hair 1.4.png", "res://Character_Portrait_Assets/Hair/hair 1.5.png", "res://Character_Portrait_Assets/Hair/hair 2.1.png", "res://Character_Portrait_Assets/Hair/hair 2.2.png", "res://Character_Portrait_Assets/Hair/hair 2.3.png", "res://Character_Portrait_Assets/Hair/hair 2.4.png", "res://Character_Portrait_Assets/Hair/hair 2.5.png", "res://Character_Portrait_Assets/Hair/hair 3.1.png", "res://Character_Portrait_Assets/Hair/hair 3.2.png", "res://Character_Portrait_Assets/Hair/hair 3.3.png", "res://Character_Portrait_Assets/Hair/hair 3.4.png", "res://Character_Portrait_Assets/Hair/hair 3.5.png", "res://Character_Portrait_Assets/Hair/hair 4.1.png", "res://Character_Portrait_Assets/Hair/hair 4.2.png", "res://Character_Portrait_Assets/Hair/hair 4.3.png", "res://Character_Portrait_Assets/Hair/hair 4.4.png", "res://Character_Portrait_Assets/Hair/hair 4.5.png", "res://Character_Portrait_Assets/Hair/hair 5.1.png", "res://Character_Portrait_Assets/Hair/hair 5.2.png", "res://Character_Portrait_Assets/Hair/hair 5.3.png", "res://Character_Portrait_Assets/Hair/hair 5.4.png", "res://Character_Portrait_Assets/Hair/hair 5.5.png", "res://Character_Portrait_Assets/Hair/hair 6.1.png", "res://Character_Portrait_Assets/Hair/hair 6.2.png", "res://Character_Portrait_Assets/Hair/hair 6.3.png", "res://Character_Portrait_Assets/Hair/hair 6.4.png", "res://Character_Portrait_Assets/Hair/hair 6.5.png", "res://Character_Portrait_Assets/Hair/hair 7.1.png", "res://Character_Portrait_Assets/Hair/hair 7.2.png", "res://Character_Portrait_Assets/Hair/hair 7.3.png", "res://Character_Portrait_Assets/Hair/hair 7.4.png", "res://Character_Portrait_Assets/Hair/hair 7.5.png", "res://Character_Portrait_Assets/Hair/hair 8.1.png", "res://Character_Portrait_Assets/Hair/hair 8.2.png", "res://Character_Portrait_Assets/Hair/hair 8.3.png", "res://Character_Portrait_Assets/Hair/hair 8.4.png", "res://Character_Portrait_Assets/Hair/hair 8.5.png", "res://Character_Portrait_Assets/Hair/hair 9.1.png", "res://Character_Portrait_Assets/Hair/hair 9.2.png", "res://Character_Portrait_Assets/Hair/hair 9.3.png", "res://Character_Portrait_Assets/Hair/hair 9.4.png", "res://Character_Portrait_Assets/Hair/hair 9.5.png", "res://Character_Portrait_Assets/Hair/hair 10.1.png", "res://Character_Portrait_Assets/Hair/hair 10.2.png", "res://Character_Portrait_Assets/Hair/hair 10.3.png", "res://Character_Portrait_Assets/Hair/hair 10.4.png", "res://Character_Portrait_Assets/Hair/hair 10.5.png"]
var hairindex = PlayerStats.hair
var beard = ["res://Character_Portrait_Assets/Beard/facial hair 0.png" , "res://Character_Portrait_Assets/Beard/facial hair 1.png", "res://Character_Portrait_Assets/Beard/facial hair 2.png", "res://Character_Portrait_Assets/Beard/facial hair 3.1.png", "res://Character_Portrait_Assets/Beard/facial hair 3.2.png", "res://Character_Portrait_Assets/Beard/facial hair 3.3.png", "res://Character_Portrait_Assets/Beard/facial hair 3.4.png", "res://Character_Portrait_Assets/Beard/facial hair 3.5.png", "res://Character_Portrait_Assets/Beard/facial hair 4.1.png", "res://Character_Portrait_Assets/Beard/facial hair 4.2.png", "res://Character_Portrait_Assets/Beard/facial hair 4.3.png", "res://Character_Portrait_Assets/Beard/facial hair 4.4.png", "res://Character_Portrait_Assets/Beard/facial hair 4.5.png"]
var beardindex  = PlayerStats.beard
var nose = ["res://Character_Portrait_Assets/Nose/nose 1.png", "res://Character_Portrait_Assets/Nose/nose 2.png", "res://Character_Portrait_Assets/Nose/nose 3.png", "res://Character_Portrait_Assets/Nose/nose 4.png", "res://Character_Portrait_Assets/Nose/nose 5.png", "res://Character_Portrait_Assets/Nose/nose 6.png", "res://Character_Portrait_Assets/Nose/nose 7.png"]
var noseindex = PlayerStats.nose
var mouth = ["res://Character_Portrait_Assets/Mouth/mouth 1.png", "res://Character_Portrait_Assets/Mouth/mouth 2.png", "res://Character_Portrait_Assets/Mouth/mouth 3.png", "res://Character_Portrait_Assets/Mouth/mouth 4.png", "res://Character_Portrait_Assets/Mouth/mouth 5.png", "res://Character_Portrait_Assets/Mouth/mouth 6.png", "res://Character_Portrait_Assets/Mouth/mouth 7.png", "res://Character_Portrait_Assets/Mouth/mouth 8.png", "res://Character_Portrait_Assets/Mouth/mouth 9.png", "res://Character_Portrait_Assets/Mouth/mouth 10.png"]
var mouthindex = PlayerStats.mouth
var eyes = ["res://Character_Portrait_Assets/Eyes/eyes 1.png", "res://Character_Portrait_Assets/Eyes/eyes 2.png", "res://Character_Portrait_Assets/Eyes/eyes 3.png", "res://Character_Portrait_Assets/Eyes/eyes 4.png", "res://Character_Portrait_Assets/Eyes/eyes 5.png", "res://Character_Portrait_Assets/Eyes/eyes 6.png", "res://Character_Portrait_Assets/Eyes/eyes 7.png", "res://Character_Portrait_Assets/Eyes/eyes 8.png", "res://Character_Portrait_Assets/Eyes/eyes 9.png", "res://Character_Portrait_Assets/Eyes/eyes 10.png", "res://Character_Portrait_Assets/Eyes/eyes 11.png"]
var eyesindex = PlayerStats.eyes
var brow = ["res://Character_Portrait_Assets/Eyebrows/eyebrows 1.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 2.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 3.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 4.png", "res://Character_Portrait_Assets/Eyebrows/eyebrows 5.png"]
var browindex = PlayerStats.brows

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
	
func _ready() -> void:
	idkbro()
