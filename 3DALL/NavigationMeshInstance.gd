extends NavigationRegion

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_NavigationMeshInstance : NavigationRegion, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NavigationMeshInstance)
		AutoObjects.A_Node(q_NavigationMeshInstance)
		AutoObjects.A_Spatial(q_NavigationMeshInstance)
		
	### START TEMP
	var temp_NavigationMesh : NavigationMesh = NavigationMesh.new()
#?#	AutoResourcesNavigationMesh.nodeFunction(temp_NavigationMesh)
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_NavigationMeshInstance.set_navigation_mesh(temp_NavigationMesh)
	if randi() % 2 == 1:
		q_NavigationMeshInstance.set_enabled(Autoload.get_bool())
