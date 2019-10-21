extends Node2D

var q_AnimationRootNode : AnimationRootNode = AnimationRootNode.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationRootNode,true)

func nodeFunction(q_AnimationRootNode : AnimationRootNode, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationRootNode = AnimationRootNode.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationNode.nodeFunction(q_AnimationRootNode)
