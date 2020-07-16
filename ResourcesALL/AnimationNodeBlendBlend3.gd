extends Node2D

var q_AnimationNodeBlend3: AnimationNodeBlend3 = AnimationNodeBlend3.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeBlend3, true)


func nodeFunction(q_AnimationNodeBlend3: AnimationNodeBlend3, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeBlend3 = AnimationNodeBlend3.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationNode.nodeFunction(q_AnimationNodeBlend3)

	if randi() % 2 == 1:
		q_AnimationNodeBlend3.set_use_sync(Autoload.get_bool())
