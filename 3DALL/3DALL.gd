extends Spatial

const TIME_TO_ACTIVATE : Vector2 = Vector2(2.0,2.0)
const USE_GLOBAL_COUNTER : bool = true

func _ready() -> void:
	if USE_GLOBAL_COUNTER:
		for i in get_children():
			i.C_COUNTER = TIME_TO_ACTIVATE
