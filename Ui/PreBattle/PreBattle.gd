extends Control

var ui
var characters
var canvasLayer
var hbox_container
var avatar_icon
var tile_icon

@onready var status_bar = preload("res://Assets/Components/Hud/Hud.tscn").instantiate()
@onready var headers = preload("res://Assets/Components/SplashScreen/SplashScreen.tscn").instantiate()
@onready var tile = preload("res://Assets/Components/TileContainer/TileContainer.tscn").instantiate()
@onready var modal = preload("res://Assets/Components/Modal/Modal.tscn").instantiate()
@onready var button_icons = preload("res://Assets/Components/IconButton/IconButton.tscn")
@onready var overview_panel = preload("res://Assets/Components/OverviewPanel/OverviewPanel.tscn").instantiate()
#@onready var characters_selection_scene = preload("res://assets/components/character_selection/character_selection.tscn").instantiate()

func _ready():
	ui = $CanvasLayer
	hbox_container = $CanvasLayer/HBoxContainer
	avatar_icon = Image.load_from_file("res://Assets/Sprites/Sample_Avatar.png")
	tile_icon = Image.load_from_file("res://Assets/Sprites/Tile_Sample.png")
	
	ui.add_child(status_bar)
	ui.add_child(headers)
	ui.add_child(overview_panel)
	ui.add_child(tile)
	
	
	#call to display modal
	#ui.add_child(modal)
	
	#sample array
	characters = [
		{"id": "123", "name": "John", "level": 42, "avatar": "res://assets/sprites/sample_avatar.png"},
		{"id": "124", "name": "Jane", "level": 35, "avatar": "res://assets/sprites/sample_avatar.png"},
		{"id": "125", "name": "Jennifer", "level": 69, "avatar": "res://assets/sprites/sample_avatar.png"},
	]
	
	var button2 = button_icons.instantiate()
	button2.icon("profile")
	hbox_container.add_child(button2)
	var button1 = button_icons.instantiate()
	button1.icon("settings")
	hbox_container.add_child(button1)
	
	#status bar 
	status_bar.update_avatar(avatar_icon)
	status_bar.update_contents( 'kwan', '69')
	status_bar.update_range(200, 300)
	
	#custom header 
	#headers.change_label('Begin Match')
	
	#Overview panel
	overview_panel.deployed_content(20,40)
	overview_panel.character_panel_content(59, characters)
	
	#tile container
	tile.tile_types(tile_icon)
	tile.tile_count(23)
		


	#for character in characters:
		#var character_instance = preload("res://assets/components/character_selection/character_selection.tscn").instantiate()
		#_add_characters(character_instance, character["id"], character["name"], str(character["level"]), character["avatar"])

func _process(delta):
	pass

func _add_characters(character_instance, character_id: String, character_name: String, character_lvlcount: String, avatar: String):
	character_instance._character_content(character_id, character_name, character_lvlcount, avatar)
	pass
