extends CharacterBody2D

func _physics_process(delta):
	if Input.is_action_just_pressed("LeftClick"):
		global_position = Vector2($"../SandboxTileMap".selectedTile)
