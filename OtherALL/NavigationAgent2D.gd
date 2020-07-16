extends NavigationAgent2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_NavigationAgent2D: NavigationAgent2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NavigationAgent2D)
		AutoObjects.A_Node(q_NavigationAgent2D)

	if randi() % 2 == 1:
		q_NavigationAgent2D.set_target_desired_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_neighbor_dist(Autoload.get_float())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_max_neighbors(Autoload.get_int())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_time_horizon(Autoload.get_float())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_max_speed(Autoload.get_float())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_path_max_distance(Autoload.get_float())

	if randi() % 2 == 1:
		q_NavigationAgent2D.distance_to_target()
	if randi() % 2 == 1:
		q_NavigationAgent2D.get_final_location()
	if randi() % 2 == 1:
		q_NavigationAgent2D.get_nav_path()
	if randi() % 2 == 1:
		q_NavigationAgent2D.get_nav_path_index()
	if randi() % 2 == 1:
		q_NavigationAgent2D.get_navigation()
	if randi() % 2 == 1:
		q_NavigationAgent2D.get_next_location()
	if randi() % 2 == 1:
		q_NavigationAgent2D.get_target_location()
	if randi() % 2 == 1:
		q_NavigationAgent2D.is_navigation_finished()
	if randi() % 2 == 1:
		q_NavigationAgent2D.is_target_reachable()
	if randi() % 2 == 1:
		q_NavigationAgent2D.is_target_reached()
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_navigation(Autoload.get_nodes(self))
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_target_location(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_NavigationAgent2D.set_velocity(Autoload.get_vector2())
