extends Node2D

var q_AudioEffectFilter : AudioEffectFilter = AudioEffectFilter.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectFilter,true)

func nodeFunction(q_AudioEffectFilter : AudioEffectFilter, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectFilter = AudioEffectFilter.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffect.nodeFunction(q_AudioEffectFilter)

	if randi() % 2 == 1:
		q_AudioEffectFilter.set_cutoff(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectFilter.set_resonance(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectFilter.set_gain(Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectFilter.set_db(Autoload.get_int()) #FilterDB
