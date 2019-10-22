extends Camera

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(qCamera : Camera, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(qCamera)
		AutoObjects.A_Node(qCamera)
		AutoObjects.A_Spatial(qCamera)

	if randi() % 2 == 1:
		qCamera.set_keep_aspect_mode(Autoload.get_int())
	if randi() % 2 == 1:
		qCamera.set_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		qCamera.set_environment(Autoload.loadA("DefaultEnv.tres"))
	if randi() % 2 == 1:
		qCamera.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_doppler_tracking(Autoload.get_int())
	if randi() % 2 == 1:
		qCamera.set_projection(Autoload.get_int())
	if randi() % 2 == 1:
		qCamera.set_current(Autoload.get_bool())
	if randi() % 2 == 1:
		qCamera.set_fov(Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_size(Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_frustum_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		qCamera.set_znear(Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_zfar(Autoload.get_float())

	if randi() % 2 == 1:
		qCamera.clear_current(Autoload.get_bool())
	if randi() % 2 == 1:
		qCamera.get_camera_rid()
	if randi() % 2 == 1:
		qCamera.get_camera_transform()
	if randi() % 2 == 1:
		qCamera.get_cull_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		qCamera.get_frustum()
	if randi() % 2 == 1:
		qCamera.is_position_behind(Autoload.get_vector3())
	if randi() % 2 == 1:
		qCamera.make_current()
	if randi() % 2 == 1:
		qCamera.project_local_ray_normal(Autoload.get_vector2())
	if randi() % 2 == 1:
		qCamera.project_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		qCamera.project_ray_normal(Autoload.get_vector2())
	if randi() % 2 == 1:
		qCamera.project_ray_origin(Autoload.get_vector2())
	if randi() % 2 == 1:
		qCamera.set_cull_mask_bit(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		qCamera.set_frustum(Autoload.get_float(),Autoload.get_vector2(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_orthogonal(Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.set_perspective(Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
	if randi() % 2 == 1:
		qCamera.unproject_position(Autoload.get_vector3())
