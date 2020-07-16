extends Node2D

var q_VisualScriptEngineSingleton: VisualScriptEngineSingleton = VisualScriptEngineSingleton.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptEngineSingleton, true)


func nodeFunction(q_VisualScriptEngineSingleton: VisualScriptEngineSingleton, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptEngineSingleton = VisualScriptEngineSingleton.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptEngineSingleton)

	if randi() % 2 == 1:
		q_VisualScriptEngineSingleton.set_singleton(Autoload.get_string())
