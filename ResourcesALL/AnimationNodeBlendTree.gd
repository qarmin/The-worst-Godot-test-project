extends Node2D

var q_AnimationNodeBlendTree : AnimationNodeBlendTree = AnimationNodeBlendTree.new()
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
			q_AnimationNodeBlendTree = AnimationNodeBlendTree.new()
		
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.set_graph_offset(Autoload.get_vector2())
			
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.add_node( Autoload.get_string(), AnimationNode.new(), Autoload.get_vector2())
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.connect_node( Autoload.get_string(), Autoload.get_int(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.disconnect_node( Autoload.get_string(), Autoload.get_int() )
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendTree.get_node( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendTree.get_node_position( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeBlendTree.has_node( Autoload.get_string() ))
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.remove_node( Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.rename_node( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeBlendTree.set_node_position( Autoload.get_string(), Autoload.get_vector2())
