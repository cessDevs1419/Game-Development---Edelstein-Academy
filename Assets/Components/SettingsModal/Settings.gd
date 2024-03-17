extends Control

var modal
var bgmusic
var seffects
var notifications
var hbox

@onready var buttons = preload("res://Assets/Components/Buttons/Buttons.tscn")

func _ready():
	modal = $Panel
	bgmusic = $Panel/ModalContainer/Container/BgMusic/CheckButton
	seffects = $Panel/ModalContainer/Container/SoundEffects/CheckButton
	notifications = $Panel/ModalContainer/Container/Notifications/CheckButton
	hbox = $Panel/ModalContainer/Container/HBoxContainer

	pass 


func _process(delta):
	pass

func show_modal():
	modal.visible = true
pass 
	
func return_press():
	modal.visible = false
pass 


func _on_bg_music_toggled(toggled_on):
	if toggled_on:
		bgmusic.anchor_left = 0.5
	else:
		bgmusic.anchor_right = 0
	pass 

func _on_sound_effects_toggled(toggled_on):
	if toggled_on:
		seffects.anchor_left = 0.5
	else:
		seffects.anchor_right = 0
	pass 
	
func _on_notifications_toggled(toggled_on):
	if toggled_on:
		notifications.anchor_left = 0.5
	else:
		notifications.anchor_right = 0
	pass 
