extends Node2D

var q_VisualScriptEmitSignal: VisualScriptEmitSignal = VisualScriptEmitSignal.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptEmitSignal, true)


func nodeFunction(q_VisualScriptEmitSignal: VisualScriptEmitSignal, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptEmitSignal = VisualScriptEmitSignal.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptEmitSignal)

	if randi() % 2 == 1:
		q_VisualScriptEmitSignal.set_signal(Autoload.get_string())
