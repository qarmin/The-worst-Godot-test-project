extends Node2D

var q_AnimationNodeBlendSpace1D : AnimationNodeBlendSpace1D = AnimationNodeBlendSpace1D.new()
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
			q_AnimationNodeBlendSpace1D = AnimationNodeBlendSpace1D.new()
			
			
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_min_space(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_max_space(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_snap(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_value_label("Jakas wartosc")
			
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.add_blend_point( AnimationRootNode.new(), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_count())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#	BUG	if randi() % 2 == 1:
#			q_AnimationNodeBlendSpace1D.remove_blend_point( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_blend_point_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, AnimationRootNode.new() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_blend_point_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)
