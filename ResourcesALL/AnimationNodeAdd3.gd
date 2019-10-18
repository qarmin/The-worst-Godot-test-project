extends Node2D

var q_AnimationNodeAdd3 : AnimationNodeAdd3 = AnimationNodeAdd3.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeAdd3 = AnimationNodeAdd3.new()

		if randi() % 2 == 1:
			q_AnimationNodeAdd3.set_use_sync(Autoload.get_bool())
