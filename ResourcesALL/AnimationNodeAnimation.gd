extends Node2D

var q_AnimationNodeAnimation : AnimationNodeAnimation = AnimationNodeAnimation.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeAnimation,true)

func nodeFunction(q_AnimationNodeAnimation : AnimationNodeAnimation, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeAnimation = AnimationNodeAnimation.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationRootNode.nodeFunction(q_AnimationNodeAnimation)

	if randi() % 2 == 1:
		q_AnimationNodeAnimation.set_animation(Autoload.get_string())
