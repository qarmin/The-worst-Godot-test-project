extends Node2D

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
		
		var q_AnimationNodeBlendSpace1D : AnimationNodeBlendSpace1D = AnimationNodeBlendSpace1D.new()
		
		q_AnimationNodeBlendSpace1D.set_min_space(randf() * 50)
		q_AnimationNodeBlendSpace1D.set_max_space(randf() * 50)
		q_AnimationNodeBlendSpace1D.set_snap(randf() * 50)
		q_AnimationNodeBlendSpace1D.set_value_label("Jakaś wartość")
		
		#q_AnimationNodeBlendSpace1D.add_blend_point( AnimationRootNode.new(), randf() * 50, randi()%50 )
		qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_count())
		#qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_node( randi()%50 ))
		#qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_position( randi()%50 ))
		#q_AnimationNodeBlendSpace1D.remove_blend_point( randi()%50 )
		#q_AnimationNodeBlendSpace1D.set_blend_point_node( randi()%50, AnimationRootNode.new() )
		#q_AnimationNodeBlendSpace1D.set_blend_point_position( randi()%50, randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AnimationNodeBlendSpace1D.set_min_space(randf() * 1000 - 500)
			q_AnimationNodeBlendSpace1D.set_max_space(randf() * 1000 - 500)
			q_AnimationNodeBlendSpace1D.set_snap(randf() * 1000 - 500)
			q_AnimationNodeBlendSpace1D.set_value_label("Jakaś wartość")
			
			q_AnimationNodeBlendSpace1D.add_blend_point( AnimationRootNode.new(), randf() * 1000 - 500, randi() % 1000 - 500 )
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_count())
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_node( randi() % 1000 - 500 ))
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_position( randi() % 1000 - 500 ))
			q_AnimationNodeBlendSpace1D.remove_blend_point( randi() % 1000 - 500 )
			q_AnimationNodeBlendSpace1D.set_blend_point_node( randi() % 1000 - 500, AnimationRootNode.new() )
			q_AnimationNodeBlendSpace1D.set_blend_point_position( randi() % 1000 - 500, randf() * 1000 - 500)
