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
		var q_AStar2D : AStar2D = AStar2D.new()
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			###q_AStar2D._compute_cost(0,1)
			###q_AStar2D._estimate_cost(0,1)
			
			q_AStar2D.add_point(0, Vector2(randf() * 50,randf() * 50), randf() * 50 + 1)
			qq += str(q_AStar2D.are_points_connected(0,1))
			#q_AStar2D.clear()
			#q_AStar2D.connect_points(0,1,bool(randi()%2))
			#q_AStar2D.disconnect_points(0,1)
			
			qq += str(q_AStar2D.get_available_point_id())
			qq += str(q_AStar2D.get_closest_point(Vector2(randf() * 50,randf() * 50)))
			qq += str(q_AStar2D.get_closest_position_in_segment(Vector2(randf() * 50,randf() * 50)))
			#qq += str(q_AStar2D.get_id_path(0,1))
			#qq += str(q_AStar2D.get_point_connections(0))
			#qq += str(q_AStar2D.get_point_path(0,1))
			#qq += str(q_AStar2D.get_point_position(0))
			#qq += str(q_AStar2D.get_point_weight_scale(0))
			qq += str(q_AStar2D.get_points())
	
			qq += str(q_AStar2D.has_point(0))
			#qq += str(q_AStar2D.is_point_disabled(0))
			#q_AStar2D.remove_point(0)
	
			q_AStar2D.set_point_disabled(0,bool(randi()%2))
			#q_AStar2D.set_point_position(0,Vector3(randf() * 50,randf() * 50,randf() * 50))
			#q_AStar2D.set_point_weight_scale(0,randf() * 50)
	
			if Autoload.WRONG_BUGS:
				###q_AStar2D._compute_cost(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
				###q_AStar2D._estimate_cost(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				q_AStar2D.add_point(randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(q_AStar2D.are_points_connected(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				q_AStar2D.clear()
				q_AStar2D.connect_points(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				q_AStar2D.disconnect_points(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				qq += str(q_AStar2D.get_available_point_id())
				qq += str(q_AStar2D.get_closest_point(Vector2( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				qq += str(q_AStar2D.get_closest_position_in_segment(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				qq += str(q_AStar2D.get_id_path(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_AStar2D.get_point_connections(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_AStar2D.get_point_path(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_AStar2D.get_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_AStar2D.get_point_weight_scale(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_AStar2D.get_points())
	
				qq += str(q_AStar2D.has_point(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_AStar2D.is_point_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				q_AStar2D.remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				q_AStar2D.set_point_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				q_AStar2D.set_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2,Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_AStar2D.set_point_weight_scale(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
				###q_AStar2D._compute_cost(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
				###q_AStar2D._estimate_cost(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				q_AStar2D.add_point(randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				qq += str(q_AStar2D.are_points_connected(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AStar2D.clear()
			if randi() % 2 == 1:
				q_AStar2D.connect_points(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				q_AStar2D.disconnect_points(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_available_point_id())
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_closest_point(Vector2( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_closest_position_in_segment(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_id_path(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_point_connections(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_point_path(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_point_weight_scale(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.get_points())
	
			if randi() % 2 == 1:
				qq += str(q_AStar2D.has_point(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(q_AStar2D.is_point_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AStar2D.remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				q_AStar2D.set_point_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				q_AStar2D.set_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2,Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AStar2D.set_point_weight_scale(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
