extends Node2D
class_name MovementEngine

@export var currentMap: TileMap

func moveUnit(unit: CharacterBody2D, targetPosition: Vector2):
	# Convert targetPosition to a currentMap poition
	var convertedTargetPosition = currentMap.map_to_local(currentMap.local_to_map(targetPosition))
	
	# Move the unit
	unit.global_position = convertedTargetPosition
