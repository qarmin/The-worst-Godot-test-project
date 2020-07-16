extends Node2D

var q_VisualScriptFunctionState: VisualScriptFunctionState = VisualScriptFunctionState.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptFunctionState, true)


func nodeFunction(q_VisualScriptFunctionState: VisualScriptFunctionState, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptFunctionState = VisualScriptFunctionState.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_VisualScriptFunctionState)

	### START TEMP

	var temp_Node: Node = Node.new()
	AutoObjects.A_Node(temp_Node)

	### END TEMP

	if randi() % 2 == 1:
		q_VisualScriptFunctionState.connect_to_signal(temp_Node, Autoload.get_string(), Autoload.get_array())
	if randi() % 2 == 1:
		q_VisualScriptFunctionState.is_valid()
	if randi() % 2 == 1:
		q_VisualScriptFunctionState.resume(Autoload.get_array())

	temp_Node.queue_free()
