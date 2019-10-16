extends Node2D

func _ready() -> void:
	if !is_visible():
		queue_free()

	for i in get_children():
		if !i.is_visible():
			i.queue_free()
