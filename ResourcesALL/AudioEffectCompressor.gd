extends Node2D

var q_AudioEffectCompressor : AudioEffectCompressor = AudioEffectCompressor.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectCompressor,true)

func nodeFunction(q_AudioEffectCompressor : AudioEffectCompressor, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectCompressor = AudioEffectCompressor.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AudioEffectCompressor)

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
