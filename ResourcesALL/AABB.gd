extends Node2D

var q_Basis : AABB = Autoload.get_aabb()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Basis = Autoload.get_aabb()

			if randi() % 2 == 1:
				q_Basis.encloses(Autoload.get_aabb())
			if randi() % 2 == 1:
				q_Basis.expand(Autoload.get_vector3())

			if randi() % 2 == 1:
				q_Basis.get_area()
			if randi() % 2 == 1:
				q_Basis.get_endpoint(Autoload.get_int())
			if randi() % 2 == 1:
				q_Basis.get_longest_axis()
			if randi() % 2 == 1:
				q_Basis.get_longest_axis_index()
			if randi() % 2 == 1:
				q_Basis.get_longest_axis_size()
			if randi() % 2 == 1:
				q_Basis.get_shortest_axis()
			if randi() % 2 == 1:
				q_Basis.get_shortest_axis_index()
			if randi() % 2 == 1:
				q_Basis.get_shortest_axis_size()
			if randi() % 2 == 1:
				q_Basis.get_support(Autoload.get_vector3())

			if randi() % 2 == 1:
				q_Basis.grow(Autoload.get_float())

			if randi() % 2 == 1:
				q_Basis.has_no_area()
			if randi() % 2 == 1:
				q_Basis.has_no_surface()
			if randi() % 2 == 1:
				q_Basis.has_point(Autoload.get_vector3())

			if randi() % 2 == 1:
				q_Basis.intersection(Autoload.get_aabb())
			if randi() % 2 == 1:
				q_Basis.intersects(Autoload.get_aabb())
			if randi() % 2 == 1:
				q_Basis.intersects_plane(Autoload.get_plane())
			if randi() % 2 == 1:
				q_Basis.intersects_segment(Autoload.get_vector3(),Autoload.get_vector3())

			if randi() % 2 == 1:
				q_Basis.merge(Autoload.get_aabb())
