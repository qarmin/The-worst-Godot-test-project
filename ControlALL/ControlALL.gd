extends GridContainer

const TIME_TO_ACTIVATE : Vector2 = Vector2(0.1,0.2)
var counter_to_delete : int = 10000000000
const TIME_TO_NEXT_NODE : float = 0.5
var current_time_to_next_node : float = TIME_TO_NEXT_NODE
var current_node : int = 0

var ev : InputEventMouseButton = InputEventMouseButton.new()

func _ready() -> void:
	if !is_visible():
		queue_free()

	for i in get_children():
		i.show()
