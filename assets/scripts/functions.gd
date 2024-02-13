extends Node


func _ready():
	pass 


func _process(delta):
	pass

func update_image(
		avatars: Node, 
		avatar_path: Image,
		scaleX: float,
		scaleY: float,
		positionX: float,
		positionY: float,
	):
	avatars.texture = ImageTexture.create_from_image(avatar_path)
	avatars.scale.x = scaleX
	avatars.scale.y = scaleY
	avatars.position.x = positionX
	avatars.position.y = positionY
	
func update_contents(namenode: Node, nameValue:String, lvlcountnode: Node, lvlcountValue:String):
	#namenode.text = nameValue
	lvlcountnode.text = lvlcountValue




	
func get_data():
	
	pass
	
func set_data():
	
	pass
