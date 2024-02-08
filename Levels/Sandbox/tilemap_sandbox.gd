extends TileMap

@onready var tileMap: TileMap = $"."
var targetDestinationTile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	var selectedTile = map_to_local(local_to_map(get_global_mouse_position()))
	
	if Input.is_action_just_pressed("LeftClick"):
		var tileData = tileMap.get_cell_tile_data(0, local_to_map(selectedTile))
		
		if tileData and tileData.get_custom_data("can_move_to"):
			targetDestinationTile = selectedTile
		else:
			print("Target is moving out of bounds")
		
