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
		
		var q_AStar : AStar = AStar.new()
		
		###q_AStar._compute_cost(0,1)
		###q_AStar._estimate_cost(0,1)
		
		q_AStar.add_point(0, Vector3(randf() * 50,randf() * 50,randf() * 50), randf() * 50)
		qq += str(q_AStar.are_points_connected(0,1))
		q_AStar.clear()
		q_AStar.connect_points(0,1,bool(randi()%2))
		q_AStar.disconnect_points(0,1)
		
		qq += str(q_AStar.get_available_point_id())
		qq += str(q_AStar.get_closest_point(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(q_AStar.get_closest_position_in_segment(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(q_AStar.get_id_path(0,1))
		qq += str(q_AStar.get_point_connections(0))
		qq += str(q_AStar.get_point_path(0,1))
		qq += str(q_AStar.get_point_position(0))
		qq += str(q_AStar.get_point_weight_scale(0))
		qq += str(q_AStar.get_points())
		
		qq += str(q_AStar.has_point(0))
		qq += str(q_AStar.is_point_disabled(0))
		q_AStar.remove_point(0)
		
		q_AStar.set_point_disabled(0,bool(randi()%2))
		q_AStar.set_point_position(0,Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_AStar.set_point_weight_scale(0,randf() * 50)

		if Autoload.WRONG_BUGS:
			###q_AStar._compute_cost(randi() % 1000 - 500,randi() % 1000 - 500)
			###q_AStar._estimate_cost(randi() % 1000 - 500,randi() % 1000 - 500)
			
			q_AStar.add_point(randi() % 1000 - 500, Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500), randf() * 1000 - 500)
			qq += str(q_AStar.are_points_connected(randi() % 1000 - 500,randi() % 1000 - 500))
			q_AStar.clear()
			q_AStar.connect_points(randi() % 1000 - 500,randi() % 1000 - 500,bool(randi()%2))
			q_AStar.disconnect_points(randi() % 1000 - 500,randi() % 1000 - 500)
			
			qq += str(q_AStar.get_available_point_id())
			qq += str(q_AStar.get_closest_point(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500)))
			qq += str(q_AStar.get_closest_position_in_segment(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500)))
			qq += str(q_AStar.get_id_path(randi() % 1000 - 500,randi() % 1000 - 500))
			qq += str(q_AStar.get_point_connections(randi() % 1000 - 500))
			qq += str(q_AStar.get_point_path(randi() % 1000 - 500,randi() % 1000 - 500))
			qq += str(q_AStar.get_point_position(randi() % 1000 - 500))
			qq += str(q_AStar.get_point_weight_scale(randi() % 1000 - 500))
			qq += str(q_AStar.get_points())
			
			qq += str(q_AStar.has_point(randi() % 1000 - 500))
			qq += str(q_AStar.is_point_disabled(randi() % 1000 - 500))
			q_AStar.remove_point(randi() % 1000 - 500)
			
			q_AStar.set_point_disabled(randi() % 1000 - 500,bool(randi()%2))
			q_AStar.set_point_position(randi() % 1000 - 500,Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500))
			q_AStar.set_point_weight_scale(randi() % 1000 - 500,randf() * 1000 - 500)
