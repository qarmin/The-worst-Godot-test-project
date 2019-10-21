extends Node2D

var q_AudioEffectEQ : AudioEffectEQ = AudioEffectEQ.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectEQ = AudioEffectEQ.new()

		if randi() % 2 == 1:
			q_AudioEffectEQ.get_band_count())
		if randi() % 2 == 1:
			q_AudioEffectEQ.get_band_gain_db( Autoload.get_int()))
		if randi() % 2 == 1:
			q_AudioEffectEQ.set_band_gain_db( Autoload.get_int(), Autoload.get_int())
