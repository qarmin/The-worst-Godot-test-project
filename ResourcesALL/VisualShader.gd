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
#			q_VisualShader.add_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, VisualShaderNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.can_connect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.connect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#		if randi() % 2 == 1:
#			q_VisualShader.connect_nodes_forced( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
#
#		if randi() % 2 == 1:
#			q_VisualShader.disconnect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
#
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node_connections( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node_list( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_node_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.get_valid_node_id( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#
#		if randi() % 2 == 1:
#			qq += str(q_VisualShader.is_node_connection( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#		if randi() % 2 == 1:
#			q_VisualShader.rebuild()
#		if randi() % 2 == 1:
#			q_VisualShader.remove_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
#
#		if randi() % 2 == 1:
#			q_VisualShader.set_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2 ) # Shader.Mode
#		if randi() % 2 == 1:
#			q_VisualShader.set_node_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
