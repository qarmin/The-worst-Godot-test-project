extends PathFollow2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_PathFollow2D : PathFollow2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_PathFollow2D)
		AutoObjects.A_Node(q_PathFollow2D)
		AutoObjects.A_CanvasItem(q_PathFollow2D)
		AutoObjects.A_Node2D(q_PathFollow2D)
		
	if randi() % 2 == 1:
		q_PathFollow2D.set_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow2D.set_unit_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow2D.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow2D.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_PathFollow2D.set_rotate(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PathFollow2D.set_cubic_interpolation(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PathFollow2D.set_loop(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PathFollow2D.set_lookahead(Autoload.get_float())
