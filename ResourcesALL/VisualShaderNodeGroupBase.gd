extends Node2D

var q_VisualShaderNodeGroupBase : VisualShaderNodeGroupBase = VisualShaderNodeGroupBase.new()
var q_control : Control = Control.new()

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	add_child(q_control)

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase = VisualShaderNodeGroupBase.new()
		if randi() % 2 == 1:
			q_control.queue_free()
			q_control = Control.new()
			add_child(q_control)

		
#	BUG	if randi() % 2 == 1:
#			q_VisualShaderNodeGroupBase.add_input_port( Autoload.get_int(), Autoload.get_int(), Autoload.get_string() )
#	BUG	if randi() % 2 == 1:
#			q_VisualShaderNodeGroupBase.add_output_port( Autoload.get_int(), Autoload.get_int(), Autoload.get_string() )

		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.clear_input_ports()
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.clear_output_ports()

#	BUG	if randi() % 2 == 1:
#			qq += str(q_VisualShaderNodeGroupBase.get_control( Autoload.get_int() ))
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
			qq += str(q_VisualShaderNodeGroupBase.has_input_port(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_VisualShaderNodeGroupBase.has_output_port(Autoload.get_int()))

		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.remove_input_port( Autoload.get_int() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.remove_output_port( Autoload.get_int() )


#	BUG	if randi() % 2 == 1:
#			q_VisualShaderNodeGroupBase.set_control( q_control,Autoload.get_int() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_input_port_name( Autoload.get_int(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_input_port_type( Autoload.get_int(), Autoload.get_int() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_inputs( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_output_port_name( Autoload.get_int(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_output_port_type( Autoload.get_int(), Autoload.get_int() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_outputs( Autoload.get_string() )
		if randi() % 2 == 1:
			q_VisualShaderNodeGroupBase.set_size( Autoload.get_vector2() )

func delete_node():
	q_control.queue_free()
