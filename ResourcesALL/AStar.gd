extends Node2D

var q_AStar : AStar = AStar.new()
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
			q_AStar = AStar.new()
			
			
		###q_AStar._compute_cost(Autoload.get_randi(),Autoload.get_randi())
		###q_AStar._estimate_cost(Autoload.get_randi(),Autoload.get_randi())
	
		if randi() % 2 == 1:
			q_AStar.add_point(Autoload.get_randi(), Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf()), Autoload.get_randf())
		if randi() % 2 == 1:
			qq += str(q_AStar.are_points_connected(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			q_AStar.clear()
		if randi() % 2 == 1:
			q_AStar.connect_points(Autoload.get_randi(),Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_AStar.disconnect_points(Autoload.get_randi(),Autoload.get_randi())

		if randi() % 2 == 1:
			qq += str(q_AStar.get_available_point_id())
		if randi() % 2 == 1:
			qq += str(q_AStar.get_closest_point(Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_closest_position_in_segment(Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_id_path(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_connections(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_path(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_position(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_weight_scale(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_points())

		if randi() % 2 == 1:
			qq += str(q_AStar.has_point(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_AStar.is_point_disabled(Autoload.get_randi()))
		if randi() % 2 == 1:
			q_AStar.remove_point(Autoload.get_randi())

		if randi() % 2 == 1:
			q_AStar.set_point_disabled(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_AStar.set_point_position(Autoload.get_randi(),Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			q_AStar.set_point_weight_scale(Autoload.get_randi(),Autoload.get_randf())
