extends "res://Scenes/Scripts/Door.gd"

var combination = [4, 1, 5]

func _ready():
	$CanvasLayer/NumberPad.combination = combination

func _input_event(viewport, event, shape_idx):
	if player_can_open && Input.is_mouse_button_pressed(BUTTON_LEFT) && !$AnimationPlayer.is_playing():
		$CanvasLayer/NumberPad.popup_centered()


func _on_Door_body_exited(body):
	if body == Global.Player:
		player_can_open = false
		$CanvasLayer/NumberPad.hide()
	
	if is_open:
		close()


func _on_NumberPad_combination_correct():
	open()
