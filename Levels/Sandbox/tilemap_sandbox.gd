extends TileMap

var selectedTile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	selectedTile = map_to_local(local_to_map(get_global_mouse_position()))
