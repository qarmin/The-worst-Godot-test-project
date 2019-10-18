extends Node2D

var q_AudioEffectReverb : AudioEffectReverb = AudioEffectReverb.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectReverb = AudioEffectReverb.new()

		if randi() % 2 == 1:
			q_AudioEffectReverb.set_predelay_msec(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_predelay_feedback(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_room_size(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_damping(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_spread(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_hpf(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_dry(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_wet(Autoload.get_float())
