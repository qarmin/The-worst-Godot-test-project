extends Node2D

var q_AudioEffectHighShelfFilter : AudioEffectHighShelfFilter = AudioEffectHighShelfFilter.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectHighShelfFilter,true)

func nodeFunction(q_AudioEffectHighShelfFilter : AudioEffectHighShelfFilter, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectHighShelfFilter = AudioEffectHighShelfFilter.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffectFilter.nodeFunction(q_AudioEffectHighShelfFilter)
