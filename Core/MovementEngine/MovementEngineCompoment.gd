extends Node2D
class_name MovementEngine

@export var currentMap: TileMap

var astarGrid: AStarGrid2D
var currentPath: Array[Vector2i]

var currentUnitInTurn: CharacterBody2D

func _ready():
	astarGrid = AStarGrid2D.new()
	astarGrid.region = currentMap.get_used_rect()
	astarGrid.cell_size = currentMap.tile_set.tile_size
	astarGrid.diagonal_mode = AStarGrid2D.DIAGONAL_MODE_NEVER
	astarGrid.update()

func moveUnit(unit: CharacterBody2D, targetPosition: Vector2):
	currentUnitInTurn = unit
	
	# Get current unit position and convert it to currentMap position
	var currentUnitPosition = currentMap.local_to_map(unit.global_position)
	
	# Convert targetPosition to a currentMap position
	var convertedTargetPosition = currentMap.local_to_map(targetPosition)
	
	# Determine path to target location
	var idPath = astarGrid.get_id_path(currentUnitPosition, convertedTargetPosition).slice(1)
	
	if idPath.is_empty() == false:
		currentPath = idPath
	
	# Move the unit
	# unit.global_position = convertedTargetPosition

func _physics_process(delta):
	if currentPath.is_empty():
		return
		
	var targetPosition = currentMap.map_to_local(currentPath.front())
	
	currentUnitInTurn.global_position = currentUnitInTurn.global_position.move_toward(targetPosition, 30)
	
	if currentUnitInTurn.global_position == targetPosition:
		currentPath.pop_front()
	return
	