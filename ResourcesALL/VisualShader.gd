extends Node2D

var q_VisualShader : VisualShader = VisualShader.new()
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
			q_VisualShader = VisualShader.new()
#
# BUG
#		if randi() % 2 == 1:
#			q_VisualShader.add_node( Autoload.get_randi(), VisualShaderNode.new(), Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randi() )
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.can_connect_nodes( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() ))
#
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.connect_nodes( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() ))
#		if randi() % 2 == 1:
#			q_VisualShader.connect_nodes_forced( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() )
#
#		if randi() % 2 == 1:
#			q_VisualShader.disconnect_nodes( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() )
#
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node( Autoload.get_randi(), Autoload.get_randi() ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node_connections( Autoload.get_randi() ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node_list( Autoload.get_randi() ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node_position( Autoload.get_randi(), Autoload.get_randi() ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_valid_node_id( Autoload.get_randi() ))
#
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.is_node_connection( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi(), Autoload.get_randi() ))
#		if randi() % 2 == 1:
#			q_VisualShader.rebuild()
#		if randi() % 2 == 1:
#			q_VisualShader.remove_node( Autoload.get_randi(), Autoload.get_randi() )
#
#		if randi() % 2 == 1:
#			q_VisualShader.set_mode( Autoload.get_randi() ) # Shader.Mode
#		if randi() % 2 == 1:
#			q_VisualShader.set_node_position( Autoload.get_randi(), Autoload.get_randi(), Vector2(Autoload.get_randf(),Autoload.get_randf()) )
