extends Node2D

var q_AnimationNodeTimeScale : AnimationNodeTimeScale = AnimationNodeTimeScale.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeTimeScale,true)

func nodeFunction(q_AnimationNodeTimeScale : AnimationNodeTimeScale, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeTimeScale = AnimationNodeTimeScale.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationNode.nodeFunction(q_AnimationNodeTimeScale)
