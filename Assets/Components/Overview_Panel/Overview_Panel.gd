extends Node

var Objectpanel
var Characterpanel
var Itemlist

func _ready():
	Objectpanel = get_node("Objective")
	#Characterpanel = get_node("Objective")
	Itemlist = get_node("Objective/Panel/ItemList")
	add_item('kwan')

func _process(delta):
	pass

func show_panel():
	Objectpanel.position.x = 20
	pass

func hide_panel():
	Objectpanel.position.x = -260
	pass


func _on_texture_button_toggled(toggled_on):
	if(toggled_on):
		hide_panel()
	else:
		show_panel()
	pass 

func add_item(data: String):
	Itemlist.add_item('• '+data, null, false)
	pass
