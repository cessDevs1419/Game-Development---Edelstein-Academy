extends Node2D

@onready var turnBaseEngine: TurnBaseEngine = $TurnBaseEngineComponent
@onready var movementEngine: MovementEngine = $MovementEngineCompoment

@onready var friendlyUnit: CharacterBody2D = $FriendlyUnit
@onready var enemyUnit: CharacterBody2D = $EnemyUnit

@onready var currentMap: TileMap = $SandboxTileMap

func _ready():
	turnBaseEngine.addUnit(friendlyUnit)
	turnBaseEngine.addUnit(enemyUnit)
	
	prepareUnits()

	pass

# This will move the units to their starting position
func prepareUnits():
	friendlyUnit.global_position = currentMap.map_to_local(Vector2(-1, 0))
	enemyUnit.global_position = currentMap.map_to_local(Vector2(9, 0))

func _input(event):
	# added a check for movement engine to prevent a unit's move from being skipped
	if event.is_action_pressed("LeftClick") and movementEngine.unitIsMoving == false:
		# Get unit in current turn
		var currentUnit: CharacterBody2D = turnBaseEngine.getUnitInTurn()
		
		# Move unit
		movementEngine.moveUnit(currentUnit, get_global_mouse_position())
		
		# End currentUnit's turn
		turnBaseEngine.nextUnitTurn()
