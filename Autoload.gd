extends Node

const WRONG_BUGS : bool = false
const BASIC_COUTER : int = -10# smaller than 0 doesn't exit project
const SLOW_FUNCTIONS : bool = false # execute slow functions, for performance reasons should be used rarely

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()
