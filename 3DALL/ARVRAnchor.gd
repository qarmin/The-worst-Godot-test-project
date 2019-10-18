extends ARVRAnchor

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_ARVRAnchor : ARVRAnchor) -> void:

		if randi() % 2 == 1:
			q_ARVRAnchor.set_anchor_id(Autoload.get_int())
		if randi() % 2 == 1:
			q_ARVRAnchor.get_anchor_name()
		if randi() % 2 == 1:
			q_ARVRAnchor.get_is_active()
		if randi() % 2 == 1:
			q_ARVRAnchor.get_mesh()
		if randi() % 2 == 1:
			q_ARVRAnchor.get_plane()
		if randi() % 2 == 1:
			q_ARVRAnchor.get_size()
