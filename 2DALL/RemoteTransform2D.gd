extends RemoteTransform2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_RemoteTransform2D : RemoteTransform2D) -> void:

		if randi() % 2 == 1:
			q_RemoteTransform2D.set_remote_node(Autoload.get_string())
		if randi() % 2 == 1:
			q_RemoteTransform2D.set_use_global_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			q_RemoteTransform2D.set_update_position(Autoload.get_bool())
		if randi() % 2 == 1:
			q_RemoteTransform2D.set_update_rotation(Autoload.get_bool())
		if randi() % 2 == 1:
			q_RemoteTransform2D.set_update_scale(Autoload.get_bool())
