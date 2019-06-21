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
		
		q_VisualShaderNodeGroupBase.get_control( 0 )
		q_VisualShaderNodeGroupBase.get_free_input_port_id()
		q_VisualShaderNodeGroupBase.get_free_output_port_id()
		q_VisualShaderNodeGroupBase.get_input_port_count()
		q_VisualShaderNodeGroupBase.get_inputs()
		q_VisualShaderNodeGroupBase.get_output_port_count()
		q_VisualShaderNodeGroupBase.get_outputs()
		q_VisualShaderNodeGroupBase.get_size()
		
		q_VisualShaderNodeGroupBase.has_input_port(0)
		q_VisualShaderNodeGroupBase.has_output_port(0)
		
		q_VisualShaderNodeGroupBase.remove_input_port( 0 )
		q_VisualShaderNodeGroupBase.remove_output_port( 0 )
		
		var q_control : Control = Control.new()
		
		q_VisualShaderNodeGroupBase.set_control( q_control,0 )
		q_VisualShaderNodeGroupBase.set_input_port_name( 0, "Kapitan" )
		q_VisualShaderNodeGroupBase.set_input_port_type( 0, 2 )
		#q_VisualShaderNodeGroupBase.set_inputs( "Wejścia" )
		q_VisualShaderNodeGroupBase.set_output_port_name( 0, "Fajf" )
		q_VisualShaderNodeGroupBase.set_output_port_type( 0, 2 )
		q_VisualShaderNodeGroupBase.set_outputs( "Wyjścia" )
		q_VisualShaderNodeGroupBase.set_size( Vector2(randf() * 50,randf() * 50) )
		
		q_VisualShaderNodeGroupBase.clear_input_ports() #MOVED
		q_VisualShaderNodeGroupBase.clear_output_ports() #MOVED
		
		q_control.queue_free()
		
		if Autoload.WRONG_BUGS:
			pass
