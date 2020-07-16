extends ClippedCamera3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_ClippedCamera3D: ClippedCamera3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		Auto3DCamera.nodeFunction(q_ClippedCamera3D)

	if randi() % 2 == 1:
		q_ClippedCamera3D.set_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_ClippedCamera3D.set_process_mode(Autoload.get_int())  #ProcessMode
	if randi() % 2 == 1:
		q_ClippedCamera3D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_ClippedCamera3D.set_clip_to_areas(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ClippedCamera3D.set_clip_to_bodies(Autoload.get_bool())

	if randi() % 2 == 1:
		q_ClippedCamera3D.add_exception(get_parent())
	if randi() % 2 == 1:
		q_ClippedCamera3D.add_exception_rid(RID())

	if randi() % 2 == 1:
		q_ClippedCamera3D.clear_exceptions()

	if randi() % 2 == 1:
		q_ClippedCamera3D.get_clip_offset()
	if randi() % 2 == 1:
		q_ClippedCamera3D.get_collision_mask_bit(Autoload.get_int())

	if randi() % 2 == 1:
		q_ClippedCamera3D.remove_exception(get_parent())
	if randi() % 2 == 1:
		q_ClippedCamera3D.remove_exception_rid(RID())

	if randi() % 2 == 1:
		q_ClippedCamera3D.set_collision_mask_bit(Autoload.get_int(), Autoload.get_bool())
