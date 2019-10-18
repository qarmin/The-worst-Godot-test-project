extends Node2D

var q_AudioEffectAmplify : AudioEffectAmplify = AudioEffectAmplify.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectAmplify  = AudioEffectAmplify.new()

		if randi() % 2 == 1:
			q_AudioEffectAmplify.set_volume_db(Autoload.get_float())
