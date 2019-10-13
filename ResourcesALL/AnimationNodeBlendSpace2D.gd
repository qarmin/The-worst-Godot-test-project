extends Node2D

var q_AnimationNodeBlendSpace2D : AnimationNodeBlendSpace2D = AnimationNodeBlendSpace2D.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
			
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D = AnimationNodeBlendSpace2D.new()

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
			q_AnimationNodeBlendSpace2D.add_blend_point( AnimationRootNode.new(), Autoload.get_vector2(), Autoload.get_int() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.add_triangle( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int() )
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_count())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_node( Autoload.get_int() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_position( Autoload.get_int() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace2D.get_triangle_count())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace2D.get_triangle_point( Autoload.get_int(), Autoload.get_int() ))
#	BUG	if randi() % 2 == 1:
#			q_AnimationNodeBlendSpace2D.remove_blend_point( Autoload.get_int() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.remove_triangle( Autoload.get_int() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.set_blend_point_node( Autoload.get_int(), AnimationRootNode.new())
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.set_blend_point_position( Autoload.get_int(), Autoload.get_vector2() )
