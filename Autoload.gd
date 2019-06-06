extends Node

const WRONG_BUGS : bool = true

func _ready() -> void:
	pass
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		if get_tree().change_scene("res://2D/2D.tscn"):
			pass
	elif Input.is_action_just_pressed("ui_up"):
		if get_tree().change_scene("res://3D/3D.tscn"):
			pass
	elif Input.is_action_just_pressed("ui_right"):
		if get_tree().change_scene("res://Control/Control.tscn"):
			pass
	elif Input.is_action_just_pressed("ui_left"):
		if get_tree().change_scene("res://3D2/3D2.tscn"):
			pass