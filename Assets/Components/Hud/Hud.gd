extends Control



var namenode
var progress
var total
var lvlcountnode
var avatars
var texture 
var healthbar
var hbox

var global_function = preload("res://Assets/Scripts/Functions.gd").new()

func _ready():
	namenode = get_node("Info_Container/Name_container/Name")
	lvlcountnode = get_node("Info_Container/Level_count_container/Level_count")
	progress = get_node("Panel/Panel/HBoxContainer/Progress")
	total = get_node("Panel/Panel/HBoxContainer/Total")
	avatars = get_node("Panel/Panel/Avatar/Sprite2D")
	healthbar = get_node("Panel/Panel/HealthbarPanel/HealthBar")

	update_top_range(30)
	pass
	

func _process(delta):
	pass

func update_avatar(avatar_path):
	global_function.update_image(avatars, avatar_path, .10, .10, 29, 29)
	
func update_contents(nameValue: String, lvlcountValue:String):
	global_function.update_contents(namenode, nameValue, lvlcountnode, lvlcountValue)

func update_range(value: int, max: int):
	progress.text = str(value)
	total.text = str(max)
	healthbar.value = value
	healthbar.min_value = 0
	healthbar.max_value = max
	
	
	pass
	
func update_top_range(range: int):
	
	pass
