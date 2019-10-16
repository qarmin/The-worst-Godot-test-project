extends Node2D

var q_AudioEffectCompressor : AudioEffectCompressor = AudioEffectCompressor.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectCompressor = AudioEffectCompressor.new()

		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_threshold(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_gain(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_attack_us(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_release_ms(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_mix(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_sidechain(Autoload.get_string())
