extends Node2D

var q_AnimationNodeBlend2 : AnimationNodeBlend2 = AnimationNodeBlend2.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeBlend2 = AnimationNodeBlend2.new()

		if randi() % 2 == 1:
			q_AnimationNodeBlend2.set_use_sync(Autoload.get_bool())
