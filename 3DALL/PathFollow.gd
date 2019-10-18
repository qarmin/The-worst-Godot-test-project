extends PathFollow

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_PathFollow : PathFollow) -> void:

	if randi() % 2 == 1:
		q_PathFollow.set_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow.set_unit_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow.set_rotation_mode(Autoload.get_int()) # ENUM RotationMode
	if randi() % 2 == 1:
		q_PathFollow.set_cubic_interpolation(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PathFollow.set_loop(Autoload.get_bool())
