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
			
		var q_AnimationNodeBlendSpace2D : AnimationNodeBlendSpace2D = AnimationNodeBlendSpace2D.new()
		if !Autoload.RANDI:
			
			q_AnimationNodeBlendSpace2D.set_auto_triangles(bool(randi()%2))
			q_AnimationNodeBlendSpace2D.set_min_space(Vector2(randf() * 50,randf() * 50))
			q_AnimationNodeBlendSpace2D.set_max_space(Vector2(randf() * 50,randf() * 50))
			q_AnimationNodeBlendSpace2D.set_snap(Vector2(randf() * 50,randf() * 50))
			q_AnimationNodeBlendSpace2D.set_x_label("Buty")
			q_AnimationNodeBlendSpace2D.set_y_label("Szalwia")
			q_AnimationNodeBlendSpace2D.set_blend_mode(randi() % 3) #BlendMode
			
			#q_AnimationNodeBlendSpace2D.add_blend_point( AnimationRootNode.new(), Vector2(randf() * 50,randf() * 50), randi()%50 )
			#q_AnimationNodeBlendSpace2D.add_triangle( randi()%50, randi()%50, randi()%50, randi()%50 )
			qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_count())
			#qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_node( randi()%50 ))
			#qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_position( randi()%50 ))
			qq += str(q_AnimationNodeBlendSpace2D.get_triangle_count())
			#qq += str(q_AnimationNodeBlendSpace2D.get_triangle_point( randi()%50, randi()%50 ))
			#q_AnimationNodeBlendSpace2D.remove_blend_point( randi()%50 )
			#q_AnimationNodeBlendSpace2D.remove_triangle( randi()%50 )
			#q_AnimationNodeBlendSpace2D.set_blend_point_node( randi()%50, AnimationRootNode.new())
			#q_AnimationNodeBlendSpace2D.set_blend_point_position( randi()%50, Vector2(randf() * 50,randf() * 50) )
			
			
			if Autoload.WRONG_BUGS:
				
				q_AnimationNodeBlendSpace2D.set_auto_triangles(bool(randi()%2))
				q_AnimationNodeBlendSpace2D.set_min_space(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_AnimationNodeBlendSpace2D.set_max_space(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_AnimationNodeBlendSpace2D.set_snap(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_AnimationNodeBlendSpace2D.set_x_label("Buty")
				q_AnimationNodeBlendSpace2D.set_y_label("Szalwia")
				q_AnimationNodeBlendSpace2D.set_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
				
				q_AnimationNodeBlendSpace2D.add_blend_point( AnimationRootNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_AnimationNodeBlendSpace2D.add_triangle( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_count())
				qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_AnimationNodeBlendSpace2D.get_triangle_count())
				qq += str(q_AnimationNodeBlendSpace2D.get_triangle_point( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				q_AnimationNodeBlendSpace2D.remove_blend_point( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_AnimationNodeBlendSpace2D.remove_triangle( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_AnimationNodeBlendSpace2D.set_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, AnimationRootNode.new())
				q_AnimationNodeBlendSpace2D.set_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )

		else: #RANDI
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_auto_triangles(bool(randi()%2))
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_min_space(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_max_space(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_snap(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_x_label("Buty")
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_y_label("Szalwia")
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
				
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.add_blend_point( AnimationRootNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.add_triangle( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_count())
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendSpace2D.get_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendSpace2D.get_triangle_count())
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendSpace2D.get_triangle_point( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.remove_blend_point( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.remove_triangle( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, AnimationRootNode.new())
			if randi() % 2 == 1:
				q_AnimationNodeBlendSpace2D.set_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
