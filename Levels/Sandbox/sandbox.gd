extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_unit_moved(original_position, target_position):
	print("A unit moved")
	pass # Replace with function body.


func _on_player_unit_selected(position):
	print("A unit is selected")
	pass # Replace with function body.
