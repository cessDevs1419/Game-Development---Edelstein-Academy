extends Control

var modal
var modalLg
var modalMd

func _ready():
	modalLg = $Modal/Modal_Lg
	modalMd = $Modal/Modal_Md
	modal = $Modal
	
	modal.visible = false
	modalLg.visible = false
	modalMd.visible = false
	
	pass 


func _process(delta):
	pass
	
func modal_md_data(data):
	pass
	
func modal_lg_data(data):
	pass
