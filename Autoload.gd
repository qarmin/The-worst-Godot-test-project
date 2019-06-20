extends Node

const WRONG_BUGS : bool = false


func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()
