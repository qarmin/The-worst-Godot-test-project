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
#	BUG	if randi() % 2 == 1:
#			q_AnimationNodeBlendSpace2D.remove_blend_point( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.remove_triangle( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.set_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, AnimationRootNode.new())
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace2D.set_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
