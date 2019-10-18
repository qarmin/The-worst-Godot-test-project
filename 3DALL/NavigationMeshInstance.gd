extends NavigationMeshInstance

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_NavigationMeshInstance : NavigationMeshInstance) -> void:

	if randi() % 2 == 1:
		q_NavigationMeshInstance.set_navigation_mesh(Autoload.loadA("NavigationMesh.tres"))
	if randi() % 2 == 1:
		q_NavigationMeshInstance.set_enabled(Autoload.get_bool())
