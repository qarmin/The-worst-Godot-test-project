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
		
	if Autoload.BASIC_COUTER > 0:
		counter_to_delete = Autoload.BASIC_COUTER
	for i in get_children():
		i.C_COUNTER = TIME_TO_ACTIVATE
		i.show()
		if Autoload.USE_ONLY_ONE_NODE:
			i.set_process(false)

func _process(delta: float) -> void:
	counter_to_delete -= 1
	if counter_to_delete < 0:
		for i in get_children():
			i.queue_free()
		get_tree().quit()
	
#	ev.pressed = true
#	ev.button_index = BUTTON_LEFT
#	ev.button_mask = BUTTON_LEFT
#	for i in range(10):
#		ev.position = Vector2(randi() % 2000, randi() % 1500)
#		Input.parse_input_event(ev)
	
	
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
			
