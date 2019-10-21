extends Node2D

var q_AudioEffectDelay : AudioEffectDelay = AudioEffectDelay.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AudioEffectDelay,true)

func nodeFunction(q_AudioEffectDelay : AudioEffectDelay, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AudioEffectDelay = AudioEffectDelay.new()
	if randi() % 2 == 1:
		AutoResourcesAudioEffect.nodeFunction(q_AudioEffectDelay)

	if randi() % 2 == 1:
		q_AudioEffectDelay.set_dry(Autoload.get_float())

	if randi() % 2 == 1:
		q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/active",Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/delay_ms",Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/level_db",Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/pan",Autoload.get_float())

	if randi() % 2 == 1:
		q_AudioEffectDelay.set("feedback/delay_ms",Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDelay.set("feedback/level_db",Autoload.get_float())
	if randi() % 2 == 1:
		q_AudioEffectDelay.set("feedback/lowpass",Autoload.get_float())
