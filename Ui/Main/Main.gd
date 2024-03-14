extends Control

var main
var pressed_font = load("res://Assets/Fonts/static/Alegreya-ExtraBold.ttf")

func _ready():
	main = get_node(".")
	pass 

func _process(delta):
	pass


func load_game():
	get_tree().change_scene_to_file("res://Ui/PreBattle/PreBattle.tscn")
	
	pass 


func new_game():

	pass 
	
func settings():
	pass 

func credits():
	pass 
