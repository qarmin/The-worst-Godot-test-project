extends Node2D

var q_AnimationNodeBlendSpace1D : AnimationNodeBlendSpace1D = AnimationNodeBlendSpace1D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeBlendSpace1D,true)

func nodeFunction(q_AnimationNodeBlendSpace1D : AnimationNodeBlendSpace1D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D = AnimationNodeBlendSpace1D.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationRootNode.nodeFunction(q_AnimationNodeBlendSpace1D)

	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.set_min_space(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.set_max_space(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.set_snap(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.set_value_label(Autoload.get_string())

	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.add_blend_point( AnimationRootNode.new(), Autoload.get_float(), Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.get_blend_point_count()
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.get_blend_point_node( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.get_blend_point_position( Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			q_AnimationNodeBlendSpace1D.remove_blend_point( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.set_blend_point_node( Autoload.get_int(), AnimationRootNode.new())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace1D.set_blend_point_position( Autoload.get_int(), Autoload.get_float())
