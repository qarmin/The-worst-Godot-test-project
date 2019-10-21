extends Node2D

var q_VisualScriptFunctionState : VisualScriptFunctionState = VisualScriptFunctionState.new()
var q_temp_0 : Node = load("res://RES/Node.tscn").instance()
onready var counter : float = Autoload.get_rand_time()

#	add_child(q_temp_0)

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptFunctionState = VisualScriptFunctionState.new()
			q_temp_0.queue_free()
			q_temp_0 = load("res://RES/Node.tscn").instance()
			add_child(q_temp_0)

		if randi() % 2 == 1:
			q_VisualScriptFunctionState.connect_to_signal( q_temp_0, Autoload.get_string(), Autoload.get_array())
		if randi() % 2 == 1:
			q_VisualScriptFunctionState.is_valid())
		if randi() % 2 == 1:
			q_VisualScriptFunctionState.resume( Autoload.get_array())

func delete_node():
	q_temp_0.queue_free()
