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
		
		var q_VisualShaderNodeGroupBase : VisualShaderNodeGroupBase = VisualShaderNodeGroupBase.new()
		
		for i in range(5):
			q_VisualShaderNodeGroupBase.add_input_port( i, randi()%50, "Dżony" )
			q_VisualShaderNodeGroupBase.add_output_port( i, randi()%50, "Ring" )
		
		#MOVED q_VisualShaderNodeGroupBase.clear_input_ports()
		#MOVED q_VisualShaderNodeGroupBase.clear_output_ports()
		
		#qq += str(q_VisualShaderNodeGroupBase.get_control( 0 ))
		qq += str(q_VisualShaderNodeGroupBase.get_free_input_port_id())
		qq += str(q_VisualShaderNodeGroupBase.get_free_output_port_id())
		qq += str(q_VisualShaderNodeGroupBase.get_input_port_count())
		qq += str(q_VisualShaderNodeGroupBase.get_inputs())
		qq += str(q_VisualShaderNodeGroupBase.get_output_port_count())
		qq += str(q_VisualShaderNodeGroupBase.get_outputs())
		qq += str(q_VisualShaderNodeGroupBase.get_size())
		
		qq += str(q_VisualShaderNodeGroupBase.has_input_port(0))
		qq += str(q_VisualShaderNodeGroupBase.has_output_port(0))
		
		q_VisualShaderNodeGroupBase.remove_input_port( 0 )
		q_VisualShaderNodeGroupBase.remove_output_port( 0 )
		
		var q_control : Control = Control.new()
		
		q_VisualShaderNodeGroupBase.set_control( q_control,0 )
		q_VisualShaderNodeGroupBase.set_input_port_name( 0, "Kapitan" )
		q_VisualShaderNodeGroupBase.set_input_port_type( 0, 2 )
		#BUG q_VisualShaderNodeGroupBase.set_inputs( "Wejścia" )
		q_VisualShaderNodeGroupBase.set_output_port_name( 0, "Fajf" )
		q_VisualShaderNodeGroupBase.set_output_port_type( 0, 2 )
		#BUG q_VisualShaderNodeGroupBase.set_outputs( "Wyjścia" )
		q_VisualShaderNodeGroupBase.set_size( Vector2(randf() * 50,randf() * 50) )
		
		q_VisualShaderNodeGroupBase.clear_input_ports() #MOVED
		q_VisualShaderNodeGroupBase.clear_output_ports() #MOVED
		
		q_control.queue_free()
		
		if Autoload.WRONG_BUGS:		
			for i in range(5):
				q_VisualShaderNodeGroupBase.add_input_port( i, randi() % 1000 - 500, "Dżony" )
				q_VisualShaderNodeGroupBase.add_output_port( i, randi() % 1000 - 500, "Ring" )
			
			#MOVED q_VisualShaderNodeGroupBase.clear_input_ports()
			#MOVED q_VisualShaderNodeGroupBase.clear_output_ports()
			
			qq += str(q_VisualShaderNodeGroupBase.get_control( randi() % 1000 - 500 ))
			qq += str(q_VisualShaderNodeGroupBase.get_free_input_port_id())
			qq += str(q_VisualShaderNodeGroupBase.get_free_output_port_id())
			qq += str(q_VisualShaderNodeGroupBase.get_input_port_count())
			qq += str(q_VisualShaderNodeGroupBase.get_inputs())
			qq += str(q_VisualShaderNodeGroupBase.get_output_port_count())
			qq += str(q_VisualShaderNodeGroupBase.get_outputs())
			qq += str(q_VisualShaderNodeGroupBase.get_size())
			
			qq += str(q_VisualShaderNodeGroupBase.has_input_port(randi() % 1000 - 500))
			qq += str(q_VisualShaderNodeGroupBase.has_output_port(randi() % 1000 - 500))
			
			#BUG q_VisualShaderNodeGroupBase.remove_input_port( randi() % 1000 - 500 )
			#BUG q_VisualShaderNodeGroupBase.remove_output_port( randi() % 1000 - 500 )
			
			q_control = Control.new()
			
			q_VisualShaderNodeGroupBase.set_control( q_control,randi() % 1000 - 500 )
			#BUG q_VisualShaderNodeGroupBase.set_input_port_name( randi() % 1000 - 500, "Kapitan" )
			q_VisualShaderNodeGroupBase.set_input_port_type( randi() % 1000 - 500, randi() % 1000 - 500 )
			#BUG q_VisualShaderNodeGroupBase.set_inputs( "Wejścia" )
			q_VisualShaderNodeGroupBase.set_output_port_name( randi() % 1000 - 500, "Fajf" )
			q_VisualShaderNodeGroupBase.set_output_port_type( randi() % 1000 - 500, randi() % 1000 - 500 )
			#BUG q_VisualShaderNodeGroupBase.set_outputs( "Wyjścia" )
			q_VisualShaderNodeGroupBase.set_size( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )
			
			q_VisualShaderNodeGroupBase.clear_input_ports() #MOVED
			q_VisualShaderNodeGroupBase.clear_output_ports() #MOVED
			
			q_control.queue_free()
