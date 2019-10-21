extends Node2D

var q_AudioEffectEQ21 : AudioEffectEQ21 = AudioEffectEQ21.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectEQ21,true)

func nodeFunction(q_AudioEffectEQ21 : AudioEffectEQ21, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectEQ21 = AudioEffectEQ21.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioEffectEQ21)
