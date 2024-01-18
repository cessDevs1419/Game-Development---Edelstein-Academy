extends Control

class_name CharacterSelection

var character_panel
var title_container 
var namenode 
var lvlcountnode 

var button
var selected
var avatarButton
var avatarPannel

var global_function = preload("res://assets/scripts/functions.gd").new()

func _ready():
	title_container = get_node("Character_panel/Title_container")
	namenode = get_node("Character_panel/Title_container/Name_holder")
	lvlcountnode = get_node("Character_panel/Title_container/Level_count")
	character_panel = get_node("Character_panel")
	button = get_node("Character_button")
	avatarButton = get_node("Character_button/Avatar/Sprite2D")
	avatarPannel = get_node("Character_panel/Avatar/Sprite2D")
	
	selected = false
	button.pressed.connect(self._character_pressed)
	character_panel.pressed.connect(self._character_pressed)
	
func _process(delta):
	pass

func _character_content(character_id_param: String, character_name_param: String, character_lvlcount_param: String, avatar_path: String):
	var avatar_icon = Image.load_from_file(avatar_path)
	update_contents(character_name_param, character_lvlcount_param)
	update_avatar(avatar_icon)
	
func update_avatar(avatar_path):
	global_function.update_avatar(avatarButton, avatar_path, .1, .1, 35, 25)
	global_function.update_avatar(avatarPannel, avatar_path, .1, .1, 35, 25)

func update_contents(nameValue:String, lvlcountValue:String):
	global_function.update_contents(namenode, nameValue, lvlcountnode, lvlcountValue)
	
func _character_pressed():
	var parent = get_parent()
	
	if !selected:
		for child in parent.get_children():
			if child is CharacterSelection and child != self:
				child.collapse()
				
	selected = !selected
	
	if selected:
		expand()
	else:
		collapse()

func expand():
	button.visible = false
	character_panel.visible = true
	character_panel.position.x = -20

func collapse():
	button.visible = true
	character_panel.visible = false
	character_panel.position.x = 0

func _on_texture_button_pressed():
	_character_pressed()
	
