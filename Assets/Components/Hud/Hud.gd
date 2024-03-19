extends Control



var namenode
var progress
var total
var lvlcountnode
var avatars
var texture 
var healthbar
var hbox
var preGamePanel
var inMatchPanel
var preGame
var inMatch
var colorPanel 

var global_function = preload("res://Assets/Scripts/Functions.gd").new()

func _ready():
	namenode = get_node("InMatch/Info_Container/Name_container/Name")
	lvlcountnode = get_node("InMatch/Info_Container/Level_count_container/Level_count")
	progress = get_node("InMatch/Panel2/Panel/HBoxContainer/Progress")
	total = get_node("InMatch/Panel2/Panel/HBoxContainer/Total")
	avatars = get_node("InMatch/Panel2/Panel/Avatar/Sprite2D")
	healthbar = get_node("InMatch/Panel2/Panel/HealthbarPanel/HealthBar")
	preGame = get_node("PreBattle")
	inMatch = get_node("InMatch")
	preGamePanel = get_node("PreBattle/PreBattleContainer")
	inMatchPanel = get_node("InMatch/Panel2")
	colorPanel = get_node("InMatch/Panel2/Panel/ColorAffinityPanel")
	update_top_range(30)
	pass
	

func _process(delta):
	pass

func update_avatar(avatar_path):
	#global_function.update_image(avatars, avatar_path, .10, .10, 29, 29)
	pass
	
func update_contents(nameValue: String, lvlcountValue:String):
	global_function.update_contents(namenode, nameValue, lvlcountnode, lvlcountValue)


func update_color(colorHex: String):
	pass

	
func update_range(value: int, max: int):
	progress.text = str(value)
	total.text = str(max)
	healthbar.value = value
	healthbar.min_value = 0
	healthbar.max_value = max
	
	
	pass
	
func update_top_range(range: int):
	
	pass

func use_pre_battle():
	inMatchPanel.visible = false
	inMatch.visible = false
	preGamePanel.visible = true
	preGame.visible = true
	
	namenode = get_node("InMatch/Info_Container/Name_container/Name")
	lvlcountnode = get_node("InMatch/Info_Container/Level_count_container/Level_count")
	progress = get_node("InMatch/Panel2/Panel/HBoxContainer/Progress")
	total = get_node("InMatch/Panel2/Panel/HBoxContainer/Total")
	avatars = get_node("InMatch/Panel2/Panel/Avatar/Sprite2D")
	healthbar = get_node("InMatch/Panel2/Panel/HealthbarPanel/HealthBar")

	
func use_in_match():
	preGamePanel.visible = false
	preGame.visible = false
	inMatchPanel.visible = true
	inMatch.visible = true
	
	namenode = get_node("PreBattle/Info_Container/Name_container/Name")
	lvlcountnode = get_node("PreBattle/Info_Container/Level_count_container/Level_count")
	progress = get_node("PreBattle/PreBattleContainer/Panel/HBoxContainer/Progress")
	total = get_node("PreBattle/PreBattleContainer/Panel/HBoxContainer/Total")
	avatars = get_node("PreBattle/PreBattleContainer/Panel/Avatar/Sprite2D")
	healthbar = get_node("PreBattle/PreBattleContainer/Panel/HealthbarPanel/HealthBar")
	colorPanel = get_node("InMatch/Panel2/Panel/ColorAffinityPanel")
