extends TextureButton

var btn_texture

func _ready():
	pass 

func icon(icon: String):
	match icon:
		"settings":
			texture_normal = preload("res://Assets/Sprites/Setting.png")
		"profile":
			texture_normal = preload("res://Assets/Sprites/Avatar.png")
		"return":
			texture_normal = preload("res://Assets/Sprites/back.png")
		"default":
			texture_normal = preload("res://Assets/Sprites/Avatar.png")
	pass

func _process(delta):
	pass
	


func _on_pressed():
	print('kwan')
	pass 
