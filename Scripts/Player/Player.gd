extends CharacterBody2D

signal unit_selected(position)
signal unit_moved(original_position, target_position)
var isSelected: bool = false;

func _physics_process(delta):
	if Input.is_action_just_pressed("LeftClick") and isSelected:
		var target_position = Vector2($"../SandboxTileMap".selectedTile)
		var current_position = global_position
		
		if target_position != current_position:
			isSelected = false;
			emit_signal("unit_moved", current_position, target_position)
		
		global_position = target_position # this will move the character
		
		pass


func _on_control_gui_input(event):
	if event.is_action_pressed("LeftClick"):
		isSelected = true
		emit_signal("unit_selected", global_position)
