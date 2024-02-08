extends TileMap

@onready var tile_map: TileMap = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_unit_selected(position):
	var tile_position = local_to_map(position)
	tile_map.set_cell(0, tile_position, 1, Vector2i(0, 0))


func _on_player_unit_moved(original_position, target_position):
	var tile_position = local_to_map(original_position);
	tile_map.set_cell(0, tile_position, -1)
	pass # Replace with function body.
