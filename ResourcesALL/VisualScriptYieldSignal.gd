extends Node2D

var q_VisualScriptYieldSignal: VisualScriptYieldSignal = VisualScriptYieldSignal.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptYieldSignal, true)


func nodeFunction(q_VisualScriptYieldSignal: VisualScriptYieldSignal, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptYieldSignal = VisualScriptYieldSignal.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptYieldSignal)

	if randi() % 2 == 1:
		q_VisualScriptYieldSignal.set_call_mode(Autoload.get_int())  # CallMode
	if randi() % 2 == 1:
		q_VisualScriptYieldSignal.set_base_type(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptYieldSignal.set_base_path(Autoload.get_string())
	if randi() % 2 == 1:
		q_VisualScriptYieldSignal.set_signal(Autoload.get_string())
