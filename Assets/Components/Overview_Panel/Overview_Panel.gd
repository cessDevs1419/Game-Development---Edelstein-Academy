extends Node

var Objectpanel
var Characterpanel
var Itemlist

func _ready():
	Objectpanel = get_node("Objective")
	Characterpanel = get_node("Characterpanel")
	Itemlist = get_node("Objective/Panel/ItemList")
	add_item('kwan')

func _process(delta):
	pass

func _objective_button_toggled(toggled_on):
	if(toggled_on):
		Objectpanel.position.x = -260
	else:
		Objectpanel.position.x = 20
	pass 

func add_item(data: String):
	Itemlist.add_item('• '+data, null, false)
	pass


func _character_button_toggled(toggled_on):
	if(toggled_on):
		Characterpanel.position.x = 1075
	else:
		Characterpanel.position.x = 800
	pass 
	pass 
