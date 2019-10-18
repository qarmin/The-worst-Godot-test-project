extends Node

func _process(delta) -> void:
	for i in get_children():
		i.alt_process(delta)
