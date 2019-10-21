extends Node2D

var q_AnimationNodeTransition : AnimationNodeTransition = AnimationNodeTransition.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeTransition,true)

func nodeFunction(q_AnimationNodeTransition : AnimationNodeTransition, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeTransition = AnimationNodeTransition.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationNode.nodeFunction(q_AnimationNodeTransition)

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_AnimationNodeTransition.set_enabled_inputs(Autoload.get_int())

	if randi() % 2 == 1:
		q_AnimationNodeTransition.set_cross_fade_time(Autoload.get_float())

	if randi() % 2 == 1:
		q_AnimationNodeTransition.set(Autoload.get_string(),Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationNodeTransition.set(Autoload.get_string(),Autoload.get_bool())
