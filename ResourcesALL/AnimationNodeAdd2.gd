extends Node2D

var q_AnimationNodeAdd2 : AnimationNodeAdd2 = AnimationNodeAdd2.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeAdd2,true)

func nodeFunction(q_AnimationNodeAdd2 : AnimationNodeAdd2, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeAdd2 = AnimationNodeAdd2.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationNode.nodeFunction(q_AnimationNodeAdd2)

		if randi() % 2 == 1:
			q_AnimationNodeAdd2.set_use_sync(Autoload.get_bool())
