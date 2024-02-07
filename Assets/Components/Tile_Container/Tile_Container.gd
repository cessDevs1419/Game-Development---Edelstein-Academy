extends Node

var tile_counts_label
var tile_type_texture
var global_function = preload("res://Assets/Scripts/Functions.gd").new()

func _ready():
	tile_counts_label = $Panel/Label
	tile_type_texture = $Panel/TextureRect
	
	pass 

func _process(delta):
	pass

func tile_types(tile):
	global_function.update_image(tile_type_texture, tile, .1, .1, 15, 35)
	pass

func tile_count(Count: int):
	tile_counts_label.text = str(Count)
	pass
