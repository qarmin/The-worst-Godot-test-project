extends Node2D

var q_AABB: AABB = Autoload.get_aabb()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AABB, true)


func nodeFunction(q_AABB: AABB, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_AABB = AABB()
			if randi() % 2 == 1:
				q_AABB = Autoload.get_aabb()
			if randi() % 2 == 1:
				q_AABB = AABB(Autoload.get_vector3(),Autoload.get_vector3())

	if randi() % 2 == 1:
		q_AABB.abs()
	if randi() % 2 == 1:
		q_AABB.encloses(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_AABB.expand(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_AABB.get_area()
	if randi() % 2 == 1:
		q_AABB.get_endpoint(Autoload.get_int())
	if randi() % 2 == 1:
		q_AABB.get_longest_axis()
	if randi() % 2 == 1:
		q_AABB.get_longest_axis_index()
	if randi() % 2 == 1:
		q_AABB.get_longest_axis_size()
	if randi() % 2 == 1:
		q_AABB.get_shortest_axis()
	if randi() % 2 == 1:
		q_AABB.get_shortest_axis_index()
	if randi() % 2 == 1:
		q_AABB.get_shortest_axis_size()
	if randi() % 2 == 1:
		q_AABB.get_support(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_AABB.grow(Autoload.get_float())

	if randi() % 2 == 1:
		q_AABB.has_no_area()
	if randi() % 2 == 1:
		q_AABB.has_no_surface()
	if randi() % 2 == 1:
		q_AABB.has_point(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_AABB.intersection(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_AABB.intersects(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_AABB.intersects_plane(Autoload.get_plane())
	if randi() % 2 == 1:
		q_AABB.intersects_segment(Autoload.get_vector3(), Autoload.get_vector3())

	if randi() % 2 == 1:
		q_AABB.is_equal_approx(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_AABB.merge(Autoload.get_aabb())
		
