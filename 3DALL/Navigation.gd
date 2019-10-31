extends Navigation

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Navigation : Navigation, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Navigation)
		AutoObjects.A_Node(q_Navigation)
		AutoObjects.A_Spatial(q_Navigation)
		
		
	### START TEMP
	var temp_NavigationMesh : NavigationMesh = NavigationMesh.new()
#?#	AutoResourcesNavigationMesh.nodeFunction(temp_NavigationMesh)
	
	### END TEMP
	
		
#		if q_Navigation.get_child_count() > 0:
#		LEAK	if randi() % 2 == 1:
#				LEAK q_Navigation.get_child(Autoload.get_int()).set_navigation_mesh(temp_NavigationMesh)
#			if randi() % 2 == 1:
#				q_Navigation.get_child(0).set_enabled(Autoload.get_bool())  

	if randi() % 2 == 1:
		q_Navigation.set_up_vector(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Navigation.get_closest_point(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Navigation.get_closest_point_normal(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Navigation.get_closest_point_owner(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Navigation.get_closest_point_to_segment(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_Navigation.get_simple_path(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_bool())

		#LEAK q_Navigation.navmesh_add(temp_NavigationMesh, Autoload.get_transform(), get_parent())
	if randi() % 2 == 1:
		q_Navigation.navmesh_remove(Autoload.get_int())
	if randi() % 2 == 1:
		q_Navigation.navmesh_set_transform(Autoload.get_int(),Autoload.get_transform())
