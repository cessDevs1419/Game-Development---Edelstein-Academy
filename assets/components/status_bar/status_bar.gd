extends Control



var namenode
var progress
var total
var lvlcountnode
var avatars
var texture 
var healthbar

var global_function = preload("res://assets/scripts/functions.gd").new()

func _ready():
	#namenode = get_node("Panel/Panel/Title_container/Name_holder")
	progress = get_node("Panel/Panel/Progress")
	total = get_node("Panel/Panel/Total")
	lvlcountnode = get_node("Panel/Panel/Avatar/Level_count_container/Level_count")
	avatars = get_node("Panel/Panel/Avatar/Sprite2D")
	healthbar = get_node("Panel/Panel/Status_container/ProgressBar")
	pass
	

func _process(delta):
	pass

func update_avatar(avatar_path):
	global_function.update_avatar(avatars, avatar_path, .11, .11, 32, 31)
	
func update_contents(nameValue: String, lvlcountValue:String):
	global_function.update_contents(namenode, nameValue, lvlcountnode, lvlcountValue)

func update_range(value: int, max: int):
	progress.text = str(value)
	total.text = str(max)
	healthbar.value = value
	healthbar.min_value = 0
	healthbar.max_value = max
	
	
	pass
	
func update_wheel():
	
	pass
