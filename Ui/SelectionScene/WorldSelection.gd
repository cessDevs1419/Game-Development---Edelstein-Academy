extends Node2D


@onready var button_icons = preload("res://Assets/Components/IconButton/IconButton.tscn")
func _ready():
	var button = button_icons.instantiate()
	button.icon("return")
	$CanvasLayer/TextureRect/Panel/TouchScreenButton/Panel.add_child(button)
	pass 


func _process(delta):
	pass


func _on_button_container_pressed():
	get_tree().change_scene_to_file("res://Ui/Main/Main.tscn")
	pass
