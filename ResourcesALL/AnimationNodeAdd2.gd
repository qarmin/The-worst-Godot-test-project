extends Node2D

var q_AnimationNodeAdd2 : AnimationNodeAdd2 = AnimationNodeAdd2.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeAdd2 = AnimationNodeAdd2.new()

		if randi() % 2 == 1:
			q_AnimationNodeAdd2.set_use_sync(Autoload.get_bool())
