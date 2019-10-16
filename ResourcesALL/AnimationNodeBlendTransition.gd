extends Node2D

var q_AnimationNodeTransition : AnimationNodeTransition = AnimationNodeTransition.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeTransition = AnimationNodeTransition.new()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_AnimationNodeTransition.set_enabled_inputs(Autoload.get_int())

		if randi() % 2 == 1:
			q_AnimationNodeTransition.set_cross_fade_time(Autoload.get_float())

		if randi() % 2 == 1:
			q_AnimationNodeTransition.set(Autoload.get_string(),Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set(Autoload.get_string(),Autoload.get_bool())
