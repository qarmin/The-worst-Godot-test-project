extends Node2D

var q_AnimationNode : AnimationNode = AnimationNode.new()
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
			q_AnimationNode = AnimationNode.new()
			
		
		if randi() % 2 == 1:
			q_AnimationNode.set_filter_enabled(bool(randi()%2))
			
		### qq +=  str(q_AnimationNode.get_caption())
		### qq +=  str(q_AnimationNode.get_child_by_name(Autoload.get_string()))
		### qq +=  str(q_AnimationNode.get_child_nodes())
		### qq +=  str(q_AnimationNode.get_parameter_default_value(Autoload.get_string()))
		### qq +=  str(q_AnimationNode.get_parameter_list())
		### qq +=  str(q_AnimationNode.has_filter())
		### q_AnimationNode.process( randf() * 50, bool(randi()%2) )
			
		if randi() % 2 == 1:
			q_AnimationNode.add_input(Autoload.get_string())
			
		if randi() % 2 == 1:
			q_AnimationNode.blend_animation( Autoload.get_string(), Autoload.get_randf(), Autoload.get_randf(), bool(randi()%2), Autoload.get_randf() )
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.blend_input( 0, Autoload.get_randf(), bool(randi()%2), Autoload.get_randf(), Autoload.get_randi(), bool(randi()%2) ))#FilterAction
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.blend_node( Autoload.get_string(), AnimationNode.new(), Autoload.get_randf(), bool(randi()%2), Autoload.get_randf(), Autoload.get_randi(), bool(randi()%2) ))#FilterAction
			
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_input_count())
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_input_name( Autoload.get_randi()))
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_parameter( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.is_path_filtered( "." ))
		if randi() % 2 == 1:
			q_AnimationNode.remove_input( Autoload.get_randi())
			
		if randi() % 2 == 1:
			q_AnimationNode.set_filter_path( ".", bool(randi()%2))
		if randi() % 2 == 1:
			q_AnimationNode.set_parameter( Autoload.get_string(), String() )
