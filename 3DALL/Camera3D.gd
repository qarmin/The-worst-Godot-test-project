extends Camera3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Camera3D: Camera3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Camera3D)
		AutoObjects.A_Node(q_Camera3D)
		AutoObjects.A_Node3D(q_Camera3D)

	### START TEMP
	var temp_Environment: Environment = Environment.new()
#?#	AutoResourcesEnvironment.nodeFunction(temp_Environment)

	### END TEMP

	if randi() % 2 == 1:
		q_Camera3D.set_keep_aspect_mode(Autoload.get_int())  #KeepAspect
	if randi() % 2 == 1:
		q_Camera3D.set_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera3D.set_environment(temp_Environment)
	if randi() % 2 == 1:
		q_Camera3D.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_doppler_tracking(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera3D.set_projection(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera3D.set_current(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera3D.set_fov(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_frustum_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera3D.set_znear(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_zfar(Autoload.get_float())

	if randi() % 2 == 1:
		q_Camera3D.clear_current(Autoload.get_bool())

	if randi() % 2 == 1:
		q_Camera3D.get_camera_rid()
	if randi() % 2 == 1:
		q_Camera3D.get_camera_transform()
	if randi() % 2 == 1:
		q_Camera3D.get_cull_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera3D.get_frustum()

	if randi() % 2 == 1:
		q_Camera3D.is_position_behind(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Camera3D.make_current()

	if randi() % 2 == 1:
		q_Camera3D.project_local_ray_normal(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera3D.project_position(Autoload.get_vector2(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.project_ray_normal(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera3D.project_ray_origin(Autoload.get_vector2())

	if randi() % 2 == 1:
		q_Camera3D.set_cull_mask_bit(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera3D.set_frustum(Autoload.get_float(), Autoload.get_vector2(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_orthogonal(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera3D.set_perspective(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Camera3D.unproject_position(Autoload.get_vector3())
