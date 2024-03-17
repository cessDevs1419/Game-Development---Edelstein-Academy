extends Control


var button

func _ready():
	button = $Button
	pass #


func _process(delta):
	pass

func button_text(text):
	button.text = text
