extends Navigation3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Navigation3D : Navigation3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Navigation3D)
		AutoObjects.A_Node(q_Navigation3D)
		AutoObjects.A_Node3D(q_Navigation3D)
		
		
	### START TEMP
	var temp_NavigationRegion3D : NavigationRegion3D = NavigationRegion3D.new()
#?#	AutoResourcesNavigationRegion3D.nodeFunction(temp_NavigationRegion3D)
	
	### END TEMP
	
		
#		if q_Navigation3D.get_child_count() > 0:
#		LEAK	if randi() % 2 == 1:
#				LEAK q_Navigation3D.get_child(Autoload.get_int()).set_Navigation3D_mesh(temp_Navigation3DMesh)
#			if randi() % 2 == 1:
#				q_Navigation3D.get_child(0).set_enabled(Autoload.get_bool())  

#	if randi() % 2 == 1: #MISSING
#		q_Navigation3D.set_up_vector(Autoload.get_vector3())
#
#	if randi() % 2 == 1:
#		q_Navigation3D.get_closest_point(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_Navigation3D.get_closest_point_normal(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_Navigation3D.get_closest_point_owner(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_Navigation3D.get_closest_point_to_segment(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Navigation3D.get_simple_path(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_bool())
#
#		#LEAK q_Navigation3D.navmesh_add(temp_Navigation3DMesh, Autoload.get_transform(), get_parent())
#	if randi() % 2 == 1:
#		q_Navigation3D.navmesh_remove(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Navigation3D.navmesh_set_transform(Autoload.get_int(),Autoload.get_transform())

	temp_NavigationRegion3D.queue_free()
