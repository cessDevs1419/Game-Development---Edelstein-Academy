extends Node


var label

func _ready():
	label = get_node("Parent/PanelContainer/Label")
	pass #

func _process(delta):
	pass
	
func change_label(labelValue: String):
	label.text = labelValue
