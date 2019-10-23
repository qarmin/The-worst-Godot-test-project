extends Node2D

var q_AnimationNodeBlendSpace2D : AnimationNodeBlendSpace2D = AnimationNodeBlendSpace2D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNodeBlendSpace2D,true)

func nodeFunction(q_AnimationNodeBlendSpace2D : AnimationNodeBlendSpace2D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D = AnimationNodeBlendSpace2D.new()
	if randi() % 2 == 1:
		AutoResourcesAnimationRootNode.nodeFunction(q_AnimationNodeBlendSpace2D)
		
	### START TEMP
	var temp_AnimationRootNode : AnimationRootNode = AnimationRootNode.new()
	AutoResourcesAnimationRootNode.nodeFunction(temp_AnimationRootNode)
	
	### END TEMP

	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_auto_triangles(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_min_space(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_max_space(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_snap(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_x_label(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_y_label(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_blend_mode(Autoload.get_int()) #BlendMode

	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.add_blend_point( temp_AnimationRootNode, Autoload.get_vector2(), Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.add_triangle( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.get_blend_point_count()
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.get_blend_point_node( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.get_blend_point_position( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.get_triangle_count()
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.get_triangle_point( Autoload.get_int(), Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			q_AnimationNodeBlendSpace2D.remove_blend_point( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.remove_triangle( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_blend_point_node( Autoload.get_int(), temp_AnimationRootNode)
	if randi() % 2 == 1:
		q_AnimationNodeBlendSpace2D.set_blend_point_position( Autoload.get_int(), Autoload.get_vector2())
