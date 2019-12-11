extends Node2D

var q_AStar : AStar = AStar.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AStar,true)

func nodeFunction(q_AStar : AStar, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AStar = AStar.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_AStar)


	###q_AStar._compute_cost(Autoload.get_int(),Autoload.get_int())
	###q_AStar._estimate_cost(Autoload.get_int(),Autoload.get_int())

	if randi() % 2 == 1:
		q_AStar.add_point(Autoload.get_int(), Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_AStar.are_points_connected(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.clear()
	if randi() % 2 == 1:
		q_AStar.connect_points(Autoload.get_int(),Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_AStar.disconnect_points(Autoload.get_int(),Autoload.get_int())

	if randi() % 2 == 1:
		q_AStar.get_available_point_id()
	if randi() % 2 == 1:
		q_AStar.get_closest_point(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_AStar.get_closest_position_in_segment(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_AStar.get_id_path(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.get_point_connections(Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.get_point_path(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.get_point_position(Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.get_point_weight_scale(Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.get_points()

	if randi() % 2 == 1:
		q_AStar.has_point(Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.is_point_disabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_AStar.remove_point(Autoload.get_int())

	if randi() % 2 == 1:
		q_AStar.set_point_disabled(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_AStar.set_point_position(Autoload.get_int(),Autoload.get_vector3())
	if randi() % 2 == 1:
		q_AStar.set_point_weight_scale(Autoload.get_int(),Autoload.get_float())
