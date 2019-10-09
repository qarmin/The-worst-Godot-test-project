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
		var q_control : Control = Control.new()
		if !Autoload.RANDI:
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


			q_VisualShaderNodeGroupBase.set_control( q_control,0 )
			q_VisualShaderNodeGroupBase.set_input_port_name( 0, "Kapitan" )
			q_VisualShaderNodeGroupBase.set_input_port_type( 0, 2 )
			q_VisualShaderNodeGroupBase.set_inputs( "Wejścia" )
			q_VisualShaderNodeGroupBase.set_output_port_name( 0, "Fajf" )
			q_VisualShaderNodeGroupBase.set_output_port_type( 0, 2 )
			q_VisualShaderNodeGroupBase.set_outputs( "Wyjścia" )
			q_VisualShaderNodeGroupBase.set_size( Vector2(randf() * 50,randf() * 50) )

			q_VisualShaderNodeGroupBase.clear_input_ports() #MOVED
			q_VisualShaderNodeGroupBase.clear_output_ports() #MOVED


			if Autoload.WRONG_BUGS:
				q_VisualShaderNodeGroupBase.add_input_port( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Dżony" )
				q_VisualShaderNodeGroupBase.add_output_port( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Ring" )

				#MOVED q_VisualShaderNodeGroupBase.clear_input_ports()
				#MOVED q_VisualShaderNodeGroupBase.clear_output_ports()

				qq += str(q_VisualShaderNodeGroupBase.get_control( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_VisualShaderNodeGroupBase.get_free_input_port_id())
				qq += str(q_VisualShaderNodeGroupBase.get_free_output_port_id())
				qq += str(q_VisualShaderNodeGroupBase.get_input_port_count())
				qq += str(q_VisualShaderNodeGroupBase.get_inputs())
				qq += str(q_VisualShaderNodeGroupBase.get_output_port_count())
				qq += str(q_VisualShaderNodeGroupBase.get_outputs())
				qq += str(q_VisualShaderNodeGroupBase.get_size())

				qq += str(q_VisualShaderNodeGroupBase.has_input_port(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_VisualShaderNodeGroupBase.has_output_port(randi() % Autoload.RANGE - Autoload.RANGE / 2))

				q_VisualShaderNodeGroupBase.remove_input_port( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_VisualShaderNodeGroupBase.remove_output_port( randi() % Autoload.RANGE - Autoload.RANGE / 2 )


				q_VisualShaderNodeGroupBase.set_control( q_control,randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_VisualShaderNodeGroupBase.set_input_port_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Kapitan" )
				q_VisualShaderNodeGroupBase.set_input_port_type( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_VisualShaderNodeGroupBase.set_inputs( "Wejścia" )
				q_VisualShaderNodeGroupBase.set_output_port_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Fajf" )
				q_VisualShaderNodeGroupBase.set_output_port_type( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_VisualShaderNodeGroupBase.set_outputs( "Wyjścia" )
				q_VisualShaderNodeGroupBase.set_size( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )

				q_VisualShaderNodeGroupBase.clear_input_ports() #MOVED
				q_VisualShaderNodeGroupBase.clear_output_ports() #MOVED
	
		else: #RANDI
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.add_input_port( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Dżony" )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.add_output_port( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Ring" )

			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.clear_input_ports()
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.clear_output_ports()

			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_control( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_free_input_port_id())
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_free_output_port_id())
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_input_port_count())
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_inputs())
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_output_port_count())
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_outputs())
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.get_size())

			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.has_input_port(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_VisualShaderNodeGroupBase.has_output_port(randi() % Autoload.RANGE - Autoload.RANGE / 2))

			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.remove_input_port( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.remove_output_port( randi() % Autoload.RANGE - Autoload.RANGE / 2 )


			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_control( q_control,randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_input_port_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Kapitan" )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_input_port_type( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_inputs( "Wejścia" )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_output_port_name( randi() % Autoload.RANGE - Autoload.RANGE / 2, "Fajf" )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_output_port_type( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_outputs( "Wyjścia" )
			if randi() % 2 == 1:
				q_VisualShaderNodeGroupBase.set_size( Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		q_control.queue_free()
