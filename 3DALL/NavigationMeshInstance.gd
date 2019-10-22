extends NavigationMeshInstance

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_NavigationMeshInstance : NavigationMeshInstance, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NavigationMeshInstance)
		AutoObjects.A_Node(q_NavigationMeshInstance)
		AutoObjects.A_Spatial(q_NavigationMeshInstance)
		
	if randi() % 2 == 1:
		q_NavigationMeshInstance.set_navigation_mesh(Autoload.loadA("NavigationMesh.tres"))
	if randi() % 2 == 1:
		q_NavigationMeshInstance.set_enabled(Autoload.get_bool())
