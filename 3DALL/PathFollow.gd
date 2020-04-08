extends PathFollow3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_PathFollow3D : PathFollow3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PathFollow3D)
		AutoObjects.A_Node(q_PathFollow3D)
		AutoObjects.A_Node3D(q_PathFollow3D)
		
	if randi() % 2 == 1:
		q_PathFollow3D.set_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow3D.set_unit_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow3D.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow3D.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow3D.set_rotation_mode(Autoload.get_int()) # ENUM RotationMode
	if randi() % 2 == 1:
		q_PathFollow3D.set_cubic_interpolation(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PathFollow3D.set_loop(Autoload.get_bool())
