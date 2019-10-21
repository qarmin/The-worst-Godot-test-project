extends Node2D

var q_VisualScriptSequence : VisualScriptSequence = VisualScriptSequence.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptSequence,true)

func nodeFunction(q_VisualScriptSequence : VisualScriptSequence, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptSequence = VisualScriptSequence.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptSequence)

	if randi() % 2 == 1:
		q_VisualScriptSequence.set_steps(Autoload.get_int())
