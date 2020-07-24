extends XRAnchor3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_XRAnchor3D: XRAnchor3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_XRAnchor3D)
		AutoObjects.A_Node(q_XRAnchor3D)
		AutoObjects.A_Node3D(q_XRAnchor3D)

#	if can_reset:
#		if randi() % 2 == 1:
#			q_XRAnchor3D = XRAnchor3D.new()

	if randi() % 2 == 1:
		q_XRAnchor3D.set_anchor_id(Autoload.get_int())

	if randi() % 2 == 1:
		q_XRAnchor3D.get_anchor_name()
	if randi() % 2 == 1:
		q_XRAnchor3D.get_is_active()
	if randi() % 2 == 1:
		q_XRAnchor3D.get_mesh()
	if randi() % 2 == 1:
		q_XRAnchor3D.get_plane()
	if randi() % 2 == 1:
		q_XRAnchor3D.get_size()
