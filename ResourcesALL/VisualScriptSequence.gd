extends Node2D

var q_VisualScriptSequence : VisualScriptSequence = VisualScriptSequence.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptSequence = VisualScriptSequence.new()

		if randi() % 2 == 1:
			q_VisualScriptSequence.set_steps(Autoload.get_int())
