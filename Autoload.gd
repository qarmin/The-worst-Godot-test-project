extends Node

const WRONG_BUGS : bool = true
const BASIC_COUTER : int = 15# -1000 not set

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()
