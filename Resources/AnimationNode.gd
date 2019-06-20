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
		
		var q_AnimationNode : AnimationNode = AnimationNode.new()
				
		q_AnimationNode.set_filter_enabled(bool(randi()%2))
		
		### qq +=  str(q_AnimationNode.get_caption())
		### qq +=  str(q_AnimationNode.get_child_by_name("Miecz"))
		### qq +=  str(q_AnimationNode.get_child_nodes())
		### qq +=  str(q_AnimationNode.get_parameter_default_value("Grac"))
		### qq +=  str(q_AnimationNode.get_parameter_list())
		### qq +=  str(q_AnimationNode.has_filter())
		### q_AnimationNode.process( randf() * 50, bool(randi()%2) )
		
		q_AnimationNode.add_input("Strzala")
		
		#q_AnimationNode.blend_animation( "Kolczan", randf() * 50, randf() * 50, bool(randi()%2), randf() * 50 )
		#q_AnimationNode.blend_input( 0, randf() * 50, bool(randi()%2), randf() * 50, randi() % 4, bool(randi()%2) )#FilterAction
		#q_AnimationNode.blend_node( "Pra", AnimationNode.new(), randf() * 50, bool(randi()%2), randf() * 50, randi() % 4, bool(randi()%2) )#FilterAction
		
		qq +=  str(q_AnimationNode.get_input_count())
		#qq +=  str(q_AnimationNode.get_input_name( randi()%50))
		#qq +=  str(q_AnimationNode.get_parameter( "Wiem" ))
		
		qq += str(q_AnimationNode.is_path_filtered( "." ))
		#q_AnimationNode.remove_input( randi()%50)
		
		q_AnimationNode.set_filter_path( ".", bool(randi()%2))
		#q_AnimationNode.set_parameter( "Monitor", String() )
		
		if Autoload.WRONG_BUGS:
			q_AnimationNode.set_filter_enabled(bool(randi()%2))
			
			### qq +=  str(q_AnimationNode.get_caption())
			### qq +=  str(q_AnimationNode.get_child_by_name("Miecz"))
			### qq +=  str(q_AnimationNode.get_child_nodes())
			### qq +=  str(q_AnimationNode.get_parameter_default_value("Grac"))
			### qq +=  str(q_AnimationNode.get_parameter_list())
			### qq +=  str(q_AnimationNode.has_filter())
			### q_AnimationNode.process( randf() * 50, bool(randi()%2) )
			
			q_AnimationNode.add_input("Strzala")
			
			q_AnimationNode.blend_animation( "Kolczan", randf() * 1000 - 500, randf() * 1000 - 500, bool(randi()%2), randf() * 1000 - 500 )
			qq += str(q_AnimationNode.blend_input( 0, randf() * 1000 - 500, bool(randi()%2), randf() * 1000 - 500, randi() % 1000 - 500, bool(randi()%2) ))#FilterAction
			qq += str(q_AnimationNode.blend_node( "Pra", AnimationNode.new(), randf() * 1000 - 500, bool(randi()%2), randf() * 1000 - 500, randi() % 1000 - 500, bool(randi()%2) ))#FilterAction
			
			qq +=  str(q_AnimationNode.get_input_count())
			qq +=  str(q_AnimationNode.get_input_name( randi() % 1000 - 500))
			qq +=  str(q_AnimationNode.get_parameter( "Wiem" ))
			
			qq += str(q_AnimationNode.is_path_filtered( "." ))
			q_AnimationNode.remove_input( randi() % 1000 - 500)
			
			q_AnimationNode.set_filter_path( ".", bool(randi()%2))
			q_AnimationNode.set_parameter( "Monitor", String() )
