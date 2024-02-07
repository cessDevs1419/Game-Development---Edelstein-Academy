extends CharacterBody2D

signal mouse_clicked(position)
var isSelected: bool = false;

func _physics_process(delta):
	if Input.is_action_just_pressed("LeftClick"):
		# global_position = Vector2($"../SandboxTileMap".selectedTile) # This will move the player
		pass


func _on_control_gui_input(event):
	if event.is_action_pressed("LeftClick"):
		isSelected = !isSelected
		emit_signal("mouse_clicked", global_position)
