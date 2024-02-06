extends Control

var characters
var canvasLayer
var vbox_container
var avatar_icon

@onready var status_bar = preload("res://assets/components/status_bar/status_bar.tscn").instantiate()
@onready var headers = preload("res://Assets/Components/Header_container/Headers.tscn").instantiate()
#@onready var characters_selection_scene = preload("res://assets/components/character_selection/character_selection.tscn").instantiate()

func _ready():
	var ui = $CanvasLayer
	ui.add_child(status_bar)
	ui.add_child(headers)
	avatar_icon = Image.load_from_file("res://assets/sprites/sample_avatar.png")
	status_bar.update_avatar(avatar_icon)
	status_bar.update_contents( 'kwan', '69')
	status_bar.update_range(200, 300)
	headers.change_label('Begin Match')
	
	characters = [
		{"id": "123", "name": "John", "level": 42, "avatar": "res://assets/sprites/sample_avatar.png"},
		{"id": "124", "name": "Jane", "level": 35, "avatar": "res://assets/sprites/sample_avatar.png"},
		{"id": "125", "name": "Jennifer", "level": 69, "avatar": "res://assets/sprites/sample_avatar.png"},
	]

	#for character in characters:
		#var character_instance = preload("res://assets/components/character_selection/character_selection.tscn").instantiate()
		#_add_characters(character_instance, character["id"], character["name"], str(character["level"]), character["avatar"])

func _process(delta):
	pass

func _add_characters(character_instance, character_id: String, character_name: String, character_lvlcount: String, avatar: String):
	vbox_container = $CanvasLayer/VBoxContainer
	vbox_container.add_child(character_instance)
	character_instance._character_content(character_id, character_name, character_lvlcount, avatar)
