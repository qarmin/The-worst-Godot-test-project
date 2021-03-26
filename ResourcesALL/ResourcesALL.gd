extends Node2D

func _ready() -> void:
	for i in get_children():
		if !i.is_visible():
			i.queue_free()
