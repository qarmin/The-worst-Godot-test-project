extends Listener3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Listener3D : Listener3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Listener3D)
		AutoObjects.A_Node(q_Listener3D)
		AutoObjects.A_Node3D(q_Listener3D)
		
	if randi() % 2 == 1:
		q_Listener3D.clear_current()
	if randi() % 2 == 1:
		q_Listener3D.get_listener_transform()
	if randi() % 2 == 1:
		q_Listener3D.is_current()
	if randi() % 2 == 1:
		q_Listener3D.make_current()
