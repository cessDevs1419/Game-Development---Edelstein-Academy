extends Node

var Objectpanel
var Characterpanel
var Characterpanel_total
var Overheadpanel
var Overheadpanel_deployed
var Overheadpanel_total
var Itemlist

func _ready():
	Objectpanel = get_node("Objective")
	Characterpanel = get_node("Characterpanel")
	Characterpanel_total = get_node("Characterpanel/Panel/Enemy_Count")
	Overheadpanel = get_node("Overheadpanel")
	Overheadpanel_deployed = get_node("Overheadpanel/Deployed_Count")
	Overheadpanel_total = get_node("Overheadpanel/Total_Count")
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

func deployed_content(deployed: int, total: int):
	Overheadpanel_deployed.text = str(deployed)
	Overheadpanel_total.text = str(total)
	pass
	
func character_panel_content(total: int, characters):
	Characterpanel_total.text = str(total)
	print(characters)
	pass

func _character_button_toggled(toggled_on):
	if(toggled_on):
		Overheadpanel.position.x = 1085
		Overheadpanel.visible = false
		Characterpanel.position.x = 1085

	else:
		Overheadpanel.position.x = 800
		Overheadpanel.visible = true
		Characterpanel.position.x = 800
	pass 
	pass 
