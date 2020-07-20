extends Node


func _process(delta) -> void:
	for i in get_children():
		if i.has_method("alt_process"):
			i.alt_process(delta)


func _physics_process(delta) -> void:
	for i in get_children():
		if i.has_method("alt_process"):
			i.alt_process(delta)
