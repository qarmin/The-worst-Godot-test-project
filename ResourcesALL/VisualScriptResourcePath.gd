extends Node2D

var q_VisualScriptResourcePath: VisualScriptResourcePath = VisualScriptResourcePath.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptResourcePath, true)


func nodeFunction(q_VisualScriptResourcePath: VisualScriptResourcePath, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptResourcePath = VisualScriptResourcePath.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptResourcePath)

	if randi() % 2 == 1:
		q_VisualScriptResourcePath.set_resource_path("res://TEMP/" + Autoload.get_string())
