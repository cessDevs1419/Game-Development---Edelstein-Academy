extends CharacterBody2D

signal unit_clicked(unit)

var current_map: TileMap
var target_position
var is_moving = false

func set_current_map(tile_map: TileMap):
	current_map = tile_map

func move_unit(position):
	target_position = position
	is_moving = true
	

func _process(delta):
	if is_moving:
		global_position = global_position.move_toward(target_position, 50) # this will move the character
		
		if global_position == target_position:
			is_moving = false

func _on_control_gui_input(event):
	if event.is_action_pressed("LeftClick"):
		emit_signal("unit_clicked", self)


func _on_unit_deselected(unit):
	pass # Replace with function body.


func set_unit_position(position):
	global_position = position
