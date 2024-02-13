extends Control

var global_function = preload("res://Assets/Scripts/Functions.gd").new()
var main


func _ready():
	main = get_node(".")
	pass 

func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Ui/PreBattle/PreBattle.tscn")
	pass 
