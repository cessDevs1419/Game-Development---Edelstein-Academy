extends TileMap

@onready var tile_map: TileMap = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_mouse_clicked(position):
	var tile_position = local_to_map(position)
	
	tile_map.set_cell(0, tile_position, 0, Vector2i(2, 1))
