extends Node2D

var q_AudioEffectPanner : AudioEffectPanner = AudioEffectPanner.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectPanner,true)

func nodeFunction(q_AudioEffectPanner : AudioEffectPanner, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectPanner = AudioEffectPanner.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffect.nodeFunction(q_AudioEffectPanner)

	if randi() % 2 == 1:
		q_AudioEffectPanner.set_pan(Autoload.get_float())
