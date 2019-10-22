extends ARVRAnchor

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ARVRAnchor : ARVRAnchor, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ARVRAnchor)
		AutoObjects.A_Node(q_ARVRAnchor)
		AutoObjects.A_Spatial(q_ARVRAnchor)
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_ARVRAnchor = ARVRAnchor.new()
		
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
	
