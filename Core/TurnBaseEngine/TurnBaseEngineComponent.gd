extends Node2D
class_name TurnBaseEngine

var units : Array[CharacterBody2D]

# Used to identify unit that can move for the turn.
var current: int = 0;

# Turn Number (for info only)
var turnNumber: int = 1;

var rng = RandomNumberGenerator.new()

func addUnit(unit: CharacterBody2D):
	units.append(unit)

# Get the unit that can move for the turn.
func getUnitInTurn() -> CharacterBody2D:
	var index = current
	return units[index]

# Move the turn queue to the next unit.
# This will also mark the end of the turn of the current unit.
func nextUnitTurn():
	current += 1
	
	if (current > units.size() - 1):
		# Start a new turn
		_nextTurn()
		
		current = 0
	
func getCurrentTurnCount() -> int:
	return turnNumber

func _nextTurn():
	turnNumber += 1
