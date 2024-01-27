extends Control

class_name StatusBar

var namenode
var lvlcountnode
var avatars
var texture 
var healthbar

var global_function = preload("res://assets/scripts/functions.gd").new()

func _ready():
	namenode = get_node("Panel/Panel/Title_container/Name_holder")
	lvlcountnode = get_node("Panel/Panel/Title_container/Level_count")
	avatars = get_node("Panel/Panel/Avatar/Sprite2D")
	healthbar = get_node("Panel/Panel/ProgressBar")
	pass
	

func _process(delta):
	pass

func update_avatar(avatar_path):
	global_function.update_avatar(avatars, avatar_path, .13, .13, 39, 34)
	
func update_contents(nameValue:String, lvlcountValue:String):
	global_function.update_contents(namenode, nameValue, lvlcountnode, lvlcountValue)

func update_range(range: int):
	healthbar.value = range
	pass
	
func update_wheel():
	
	pass
