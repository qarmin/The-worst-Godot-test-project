extends Node2D

var q_VisualScriptFunctionState : VisualScriptFunctionState = VisualScriptFunctionState.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptFunctionState,true)

func nodeFunction(q_VisualScriptFunctionState : VisualScriptFunctionState, can_reset : bool = false) -> void:
	var q_node : Node = Node.new()
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptFunctionState = VisualScriptFunctionState.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_VisualScriptFunctionState)

	if randi() % 2 == 1:
		q_VisualScriptFunctionState.connect_to_signal( q_node, Autoload.get_string(), Autoload.get_array())
	if randi() % 2 == 1:
		q_VisualScriptFunctionState.is_valid()
	if randi() % 2 == 1:
		q_VisualScriptFunctionState.resume( Autoload.get_array())

	q_node.queue_free()
