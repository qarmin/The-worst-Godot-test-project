extends Listener

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_Listener : Listener) -> void:

	if randi() % 2 == 1:
		q_Listener.clear_current()
	if randi() % 2 == 1:
		q_Listener.get_listener_transform()
	if randi() % 2 == 1:
		q_Listener.is_current()
	if randi() % 2 == 1:
		q_Listener.make_current()
