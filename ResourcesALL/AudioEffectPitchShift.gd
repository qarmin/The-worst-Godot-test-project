extends Node2D

var q_AudioEffectPitchShift : AudioEffectPitchShift = AudioEffectPitchShift.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectPitchShift,true)

func nodeFunction(q_AudioEffectPitchShift : AudioEffectPitchShift, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectPitchShift = AudioEffectPitchShift.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioEffectPitchShift)

	if randi() % 2 == 1:
		q_AudioEffectPitchShift.set_pitch_scale(Autoload.get_float())
