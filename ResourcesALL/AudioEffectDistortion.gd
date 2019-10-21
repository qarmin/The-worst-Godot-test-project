extends Node2D

var q_AudioEffectDistortion : AudioEffectDistortion = AudioEffectDistortion.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectDistortion,true)

func nodeFunction(q_AudioEffectDistortion : AudioEffectDistortion, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectDistortion = AudioEffectDistortion.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioEffectDistortion)

	if randi() % 2 == 1:
		q_AudioEffectDistortion.set_mode(Autoload.get_int()) #Mode
	if randi() % 2 == 1:
		q_AudioEffectDistortion.set_pre_gain(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDistortion.set_keep_hf_hz(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDistortion.set_drive(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDistortion.set_post_gain(Autoload.get_float())
