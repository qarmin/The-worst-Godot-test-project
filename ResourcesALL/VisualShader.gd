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
		
		var q_VisualShader : VisualShader = VisualShader.new()
		if !Autoload.RANDI:
			
			#q_VisualShader.add_node( randi() % VisualShader.TYPE_MAX, VisualShaderNode.new(), Vector2(randf() * 50,randf() * 50), 0 )
			qq += str(q_VisualShader.can_connect_nodes( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 ))
			
			#qq += str(q_VisualShader.connect_nodes( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 ))
			q_VisualShader.connect_nodes_forced( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 )
			
			q_VisualShader.disconnect_nodes( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 )
			
			qq += str(q_VisualShader.get_node( randi() % VisualShader.TYPE_MAX, 0 ))
			qq += str(q_VisualShader.get_node_connections( randi() % VisualShader.TYPE_MAX ))
			qq += str(q_VisualShader.get_node_list( randi() % VisualShader.TYPE_MAX ))
			qq += str(q_VisualShader.get_node_position( randi() % VisualShader.TYPE_MAX, 0 ))
			qq += str(q_VisualShader.get_valid_node_id( randi() % VisualShader.TYPE_MAX ))
			
			qq += str(q_VisualShader.is_node_connection( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 ))
			q_VisualShader.rebuild()
			#q_VisualShader.remove_node( randi() % VisualShader.TYPE_MAX, 0 )
			
			q_VisualShader.set_mode( randi() % 3 ) # Shader.Mode
			q_VisualShader.set_node_position( randi() % VisualShader.TYPE_MAX, 0, Vector2(randf() * 50,randf() * 50) )
			
			if Autoload.WRONG_BUGS:
				q_VisualShader.add_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, VisualShaderNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				qq += str(q_VisualShader.can_connect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
				qq += str(q_VisualShader.connect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				q_VisualShader.connect_nodes_forced( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				
				q_VisualShader.disconnect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				
				qq += str(q_VisualShader.get_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_VisualShader.get_node_connections( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_VisualShader.get_node_list( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_VisualShader.get_node_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_VisualShader.get_valid_node_id( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
				qq += str(q_VisualShader.is_node_connection( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				q_VisualShader.rebuild()
				q_VisualShader.remove_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				
				q_VisualShader.set_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2 ) # Shader.Mode
				q_VisualShader.set_node_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualShader.add_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, VisualShaderNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				qq += str(q_VisualShader.can_connect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
			if randi() % 2 == 1:
				qq += str(q_VisualShader.connect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				q_VisualShader.connect_nodes_forced( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				
			if randi() % 2 == 1:
				q_VisualShader.disconnect_nodes( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				
			if randi() % 2 == 1:
				qq += str(q_VisualShader.get_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_VisualShader.get_node_connections( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_VisualShader.get_node_list( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_VisualShader.get_node_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_VisualShader.get_valid_node_id( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
			if randi() % 2 == 1:
				qq += str(q_VisualShader.is_node_connection( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				q_VisualShader.rebuild()
			if randi() % 2 == 1:
				q_VisualShader.remove_node( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				
			if randi() % 2 == 1:
				q_VisualShader.set_mode( randi() % Autoload.RANGE - Autoload.RANGE / 2 ) # Shader.Mode
			if randi() % 2 == 1:
				q_VisualShader.set_node_position( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
