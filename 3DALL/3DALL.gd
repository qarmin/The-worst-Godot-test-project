extends Spatial

const TIME_TO_ACTIVATE : Vector2 = Vector2(0.01,0.02)
var counter_to_delete : int = 10000000000
const TIME_TO_NEXT_NODE : float = 0.5
var current_time_to_next_node : float = TIME_TO_NEXT_NODE
var current_node : int = 0

func _ready() -> void:
	if !is_visible():
		queue_free()
		
	if Autoload.BASIC_COUTER > 0:
		counter_to_delete = Autoload.BASIC_COUTER
	for i in get_children():
		i.C_COUNTER = TIME_TO_ACTIVATE
		if Autoload.USE_ONLY_ONE_NODE:
			i.set_process(false)
		if !i.is_visible():
			i.queue_free()

func _process(delta: float) -> void:
	counter_to_delete -= 1
	if counter_to_delete < 0:
		for i in get_children():
			i.queue_free()
		get_tree().quit()
	
	current_time_to_next_node -= delta
	if Autoload.USE_ONLY_ONE_NODE && current_time_to_next_node <= 0.0:
		current_time_to_next_node = TIME_TO_NEXT_NODE
		if get_child_count() > current_node:
			get_child(current_node).set_process(false)
			Autoload.save_to_file("3D Stop: " + get_child(current_node).get_name())
		current_node = (current_node + 1) % get_child_count()
		if get_child_count() > current_node:
			get_child(current_node).set_process(true)
			Autoload.save_to_file("3D Start: " + get_child(current_node).get_name())
			
