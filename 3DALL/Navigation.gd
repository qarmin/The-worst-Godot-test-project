extends Navigation

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if get_child_count() > 0:
#		LEAK	if randi() % 2 == 1:
#				LEAK get_child(Autoload.get_int()).set_navigation_mesh(Autoload.loadA("NavigationMesh.tres"))
			if randi() % 2 == 1:
				get_child(0).set_enabled(Autoload.get_bool())  

		if randi() % 2 == 1:
			set_up_vector(Autoload.get_vector3())

		if randi() % 2 == 1:
			Autoload.qq = str(get_closest_point(Autoload.get_vector3()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_closest_point_normal(Autoload.get_vector3()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_closest_point_owner(Autoload.get_vector3()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_closest_point_to_segment(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_simple_path(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_bool()))

			#LEAK Autoload.qq = str(navmesh_add(Autoload.loadA("NavigationMesh.tres"), Autoload.get_transform(), get_parent()))
		if randi() % 2 == 1:
			navmesh_remove(Autoload.get_int())
		if randi() % 2 == 1:
			navmesh_set_transform(Autoload.get_int(),Autoload.get_transform())
