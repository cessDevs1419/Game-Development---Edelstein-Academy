extends CharacterBody2D

signal unit_selected(position)
signal unit_moved(original_position, target_position)

var isSelected: bool = false
var target_position
var current_position
var is_moving = false

func _physics_process(delta):
	if is_moving:
		global_position = global_position.move_toward(target_position, 50) # this will move the character
		
		if target_position == current_position:
			is_moving = false
			
			
	if Input.is_action_just_pressed("LeftClick") and isSelected:
		var targetDestinationTile =  $"../SandboxTileMap".targetDestinationTile
		
		if not targetDestinationTile:
			pass
		
		target_position = Vector2(targetDestinationTile)
		current_position = global_position
		
		if target_position != current_position:
			isSelected = false;
			emit_signal("unit_moved", current_position, target_position)
			is_moving = true
		pass
	pass
	

func _on_control_gui_input(event):
	if event.is_action_pressed("LeftClick"):
		isSelected = true
		emit_signal("unit_selected", global_position)
