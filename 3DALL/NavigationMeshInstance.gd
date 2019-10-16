extends NavigationMeshInstance

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_navigation_mesh(Autoload.loadA("NavigationMesh.tres"))
		if randi() % 2 == 1:
			set_enabled(Autoload.get_bool())
