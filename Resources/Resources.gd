extends Node

const TIME_TO_ACTIVATE : Vector2 = Vector2(4.0,4.0)
const USE_GLOBAL_COUNTER : bool = true

func _ready() -> void:
	if USE_GLOBAL_COUNTER:
		for i in get_children():
			if i.is_visible():
				i.C_COUNTER = TIME_TO_ACTIVATE
			else:
				i.queue_free()
