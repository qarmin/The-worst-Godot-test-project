extends ClippedCamera

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ClippedCamera : ClippedCamera) -> void:
	
	if randi() % 2 == 1:
		Auto3DCamera.nodeFunction(q_ClippedCamera)


	if randi() % 2 == 1:
		q_ClippedCamera.set_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_ClippedCamera.set_process_mode(Autoload.get_int()) #ProcessMode
	if randi() % 2 == 1:
		q_ClippedCamera.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_ClippedCamera.set_clip_to_areas(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ClippedCamera.set_clip_to_bodies(Autoload.get_bool())

	if randi() % 2 == 1:
		q_ClippedCamera.add_exception(get_parent())
	if randi() % 2 == 1:
		q_ClippedCamera.add_exception_rid(RID())
	if randi() % 2 == 1:
		q_ClippedCamera.clear_exceptions()
	if randi() % 2 == 1:
		q_ClippedCamera.get_collision_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_ClippedCamera.remove_exception(get_parent())
	if randi() % 2 == 1:
		q_ClippedCamera.remove_exception_rid(RID())
	if randi() % 2 == 1:
		q_ClippedCamera.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
