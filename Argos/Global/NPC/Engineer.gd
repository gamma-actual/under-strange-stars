extends Node

#Npc Stats
const first_name = "Chesa"
const full_name = null
var level:int = 1
var relationship:int = 1
var romance_check:bool = false
var perk_level1:bool = true
var perk_level3:bool = false
var perk_level5:bool = false
var perk_level6:bool = false
var perk_buff:float = 0.05
var exp:int = 0
var exp_tolvl:int = 4

#perk level 1 for the engineer is going to reduce the amount of materials needed to fix the ship
#perk level 3
#perk level 5
#perk level 6 special romance perk



func give_exp(amount): #give exp and check for level up
	exp += amount
	if exp >= exp_tolvl:
		level += 1
		perk_buff += 0.05
	if level >= 3:
		perk_level3 = true
	if level >=5:
		perk_level5 = true

func level_relationship(): #increase relationship
	relationship += 1

func romance(): #change the romance flag, your gf breaks up with you :(
	if romance_check == false:
		romance_check = true
		perk_level6 = true
	elif romance_check == true:
		romance_check = false
