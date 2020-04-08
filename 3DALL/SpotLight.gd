extends SpotLight3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_SpotLight3D : SpotLight3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SpotLight3D)
		AutoObjects.A_Node(q_SpotLight3D)
		AutoObjects.A_Node3D(q_SpotLight3D)
		AutoObjects.A_VisualInstance3D(q_SpotLight3D)
		AutoObjects.A_Light3D(q_SpotLight3D)
		
	if randi() % 2 == 1:
		q_SpotLight3D.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight3D.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight3D.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight3D.set_param(Autoload.get_int(),Autoload.get_float())
