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
			q_AnimationNodeBlendSpace1D.set_min_space(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_max_space(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_snap(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_value_label("Jakas wartosc")
			
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.add_blend_point( AnimationRootNode.new(), Autoload.get_randf(), Autoload.get_randi() )
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_count())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_node( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendSpace1D.get_blend_point_position( Autoload.get_randi() ))
#	BUG	if randi() % 2 == 1:
#			q_AnimationNodeBlendSpace1D.remove_blend_point( Autoload.get_randi() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_blend_point_node( Autoload.get_randi(), AnimationRootNode.new() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendSpace1D.set_blend_point_position( Autoload.get_randi(), Autoload.get_randf())
