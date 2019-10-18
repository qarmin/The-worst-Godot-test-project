extends Node2D

var q_AudioEffectStereoEnhance : AudioEffectStereoEnhance = AudioEffectStereoEnhance.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance = AudioEffectStereoEnhance.new()

		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance.set_pan_pullout(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance.set_time_pullout(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance.set_surround(Autoload.get_float())
