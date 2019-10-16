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
			q_AnimationNode.set_filter_enabled(Autoload.get_bool())
			
		### qq +=  str(q_AnimationNode.get_caption())
		### qq +=  str(q_AnimationNode.get_child_by_name(Autoload.get_string()))
		### qq +=  str(q_AnimationNode.get_child_nodes())
		### qq +=  str(q_AnimationNode.get_parameter_default_value(Autoload.get_string()))
		### qq +=  str(q_AnimationNode.get_parameter_list())
		### qq +=  str(q_AnimationNode.has_filter())
		### q_AnimationNode.process( Autoload.get_float(), Autoload.get_bool() )
			
		if randi() % 2 == 1:
			q_AnimationNode.add_input(Autoload.get_string())
			
		if randi() % 2 == 1:
			q_AnimationNode.blend_animation( Autoload.get_string(), Autoload.get_float(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_float() )
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.blend_input( Autoload.get_int(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_float(), Autoload.get_int(), Autoload.get_bool() ))#FilterAction
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.blend_node( Autoload.get_string(), AnimationNode.new(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_float(), Autoload.get_int(), Autoload.get_bool() ))#FilterAction
			
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_input_count())
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_input_name( Autoload.get_int()))
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_parameter( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.is_path_filtered( Autoload.get_nodepath(self)))
		if randi() % 2 == 1:
			q_AnimationNode.remove_input( Autoload.get_int())
			
		if randi() % 2 == 1:
			q_AnimationNode.set_filter_path( Autoload.get_nodepath(self), Autoload.get_bool())
		if randi() % 2 == 1:
			q_AnimationNode.set_parameter( Autoload.get_string(), Autoload.get_string() )
