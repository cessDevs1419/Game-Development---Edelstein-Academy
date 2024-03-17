extends Control

var main
var pressed_font = load("res://Assets/Fonts/static/Alegreya-ExtraBold.ttf")
var settingsmodal

var ui
@onready var modal = preload("res://Assets/Components/SettingsModal/Settings.tscn").instantiate()

func _ready():
	main = get_node(".")
	ui = $CanvasLayer
	ui.add_child(modal)
	
	pass 

func _process(delta):
	pass


func load_game():
	get_tree().change_scene_to_file("res://Ui/PreBattle/PreBattlePortal.tscn")
	pass 


func new_game():
	
	pass 
	
func settings():
	modal.show_modal()
	pass 

func credits():
	pass 
