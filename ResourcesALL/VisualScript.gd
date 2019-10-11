extends Node2D

var q_VisualScript : VisualScript = VisualScript.new()
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
			q_VisualScript = VisualScript.new()
		
		
		if randi() % 2 == 1:
			q_VisualScript.add_custom_signal( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.add_function( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.add_node( Autoload.get_string(), Autoload.get_randi(), VisualScriptNode.new(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_VisualScript.add_variable( Autoload.get_string(), Vector2(Autoload.get_randf(),Autoload.get_randf()), bool(randi()%2) )
	
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_add_argument( Autoload.get_string(), randi()%50, Autoload.get_string(), Autoload.get_randi() )
		if randi() % 2 == 1:
			qq += str(q_VisualScript.custom_signal_get_argument_count( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.custom_signal_get_argument_name( Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.custom_signal_get_argument_type( Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_remove_argument( Autoload.get_string(), Autoload.get_randi() )
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_set_argument_name( Autoload.get_string(), Autoload.get_randi(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_set_argument_type( Autoload.get_string(), Autoload.get_randi(), randi()%50)
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_swap_argument( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi() )
	
		if randi() % 2 == 1:
			q_VisualScript.data_connect( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() )
		if randi() % 2 == 1:
			q_VisualScript.data_disconnect( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() )
	
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_function_node_id( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_function_scroll( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_node( Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_node_position( Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_variable_default_value( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_variable_export( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_variable_info( Autoload.get_string() ))
	
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_custom_signal( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_data_connection( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_function( Autoload.get_string() ) )
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_node( Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_sequence_connection( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_variable( Autoload.get_string() ))
	
		if randi() % 2 == 1:
			q_VisualScript.remove_custom_signal( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.remove_function( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.remove_node( Autoload.get_string(), Autoload.get_randi() )
		if randi() % 2 == 1:
			q_VisualScript.remove_variable( Autoload.get_string() )
	
		if randi() % 2 == 1:
			q_VisualScript.rename_custom_signal( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.rename_function( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.rename_variable( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.sequence_connect( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi())
		if randi() % 2 == 1:
			q_VisualScript.sequence_disconnect( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() )
	
		if randi() % 2 == 1:
			q_VisualScript.set_function_scroll( Autoload.get_string(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_VisualScript.set_instance_base_type( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualScript.set_node_position( Autoload.get_string(), Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
		if randi() % 2 == 1:
			q_VisualScript.set_variable_default_value( Autoload.get_string(), bool(randi()%2) )
		if randi() % 2 == 1:
			q_VisualScript.set_variable_export( Autoload.get_string(), bool(randi()%2) )
		if randi() % 2 == 1:
			q_VisualScript.set_variable_info( Autoload.get_string(), {Autoload.get_string(): 15, Autoload.get_string(): 124})
