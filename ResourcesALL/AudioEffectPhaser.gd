extends Node2D

var q_AudioEffectPhaser : AudioEffectPhaser = AudioEffectPhaser.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectPhaser = AudioEffectPhaser.new()

		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_range_min_hz(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_range_max_hz(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_rate_hz(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_feedback(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_depth(Autoload.get_float())
