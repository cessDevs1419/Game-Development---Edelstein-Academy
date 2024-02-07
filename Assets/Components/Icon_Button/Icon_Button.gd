extends TextureButton

var btn_texture



func _ready():
	pass 
	
func _pressed():
	print('kwan')
	pass

func icon(icon: String):
	match icon:
		"settings":
			print(icon)
			texture_normal = preload("res://Assets/Sprites/Setting.png")
		"profile":
			texture_normal = preload("res://Assets/Sprites/Avatar.png")
		"default":
			texture_normal = preload("res://Assets/Sprites/Avatar.png")
	pass

func _process(delta):
	pass
