extends Node2D

var selected_node = null
var last_selected_node = null

var friendly_unit: CharacterBody2D
var enemy_unit: CharacterBody2D
var sandbox_tile_map: TileMap
var indicator_tile_map: TileMap

func _ready():
	friendly_unit = $FriendlyUnit
	sandbox_tile_map = $SandboxTileMap
	enemy_unit = $EnemyUnit
	indicator_tile_map = $IndicatorTileMap
	
	var friendly_unit_start_pos = sandbox_tile_map.map_to_local(Vector2(-1, 0))
	var enemy_unit_start_pos = sandbox_tile_map.map_to_local(Vector2(9, 0))
	
	# Set current map
	friendly_unit.set_current_map(sandbox_tile_map)
	enemy_unit.set_current_map(sandbox_tile_map)
	
	# Move unit to starting position
	friendly_unit.set_unit_position(friendly_unit_start_pos)
	enemy_unit.set_unit_position(enemy_unit_start_pos)
	return


func _process(delta):
	return	

func _input(event):
	if event.is_action_pressed("LeftClick"):
		if selected_node:
			# Show Indicator for selected unit
			# var selected_node_pos = indicator_tile_map.local_to_map(selected_node.global_position)
			# indicator_tile_map.set_cell(0, selected_node_pos, 0, Vector2i(0, 0))
			
			# This determines if the selected could be reached or the unit can move to
			var selected_tile = sandbox_tile_map.map_to_local(sandbox_tile_map.local_to_map(get_global_mouse_position()))
			var selected_tile_data = sandbox_tile_map.get_cell_tile_data(0, sandbox_tile_map.local_to_map(selected_tile))
			
			if selected_tile_data and selected_tile_data.get_custom_data("can_move_to"):
				selected_node.move_unit(selected_tile)
				selected_node = null
		return
	return

func _on_friendly_unit_unit_clicked(unit):
	print("Unit Clicked: ", unit.name)
	if not selected_node:
		selected_node = unit
	return


func _on_friendly_unit_unit_deselected(unit):
	print(str("Deselected: ", unit.name))
