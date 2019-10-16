extends Node2D

var q_AudioEffectPanner : AudioEffectPanner = AudioEffectPanner.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectPanner = AudioEffectPanner.new()

		if randi() % 2 == 1:
			q_AudioEffectPanner.set_pan(Autoload.get_float())
