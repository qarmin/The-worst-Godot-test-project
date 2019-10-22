extends Listener

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_Listener : Listener, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Listener)
		AutoObjects.A_Node(q_Listener)
		AutoObjects.A_Spatial(q_Listener)
		
	if randi() % 2 == 1:
		q_Listener.clear_current()
	if randi() % 2 == 1:
		q_Listener.get_listener_transform()
	if randi() % 2 == 1:
		q_Listener.is_current()
	if randi() % 2 == 1:
		q_Listener.make_current()
