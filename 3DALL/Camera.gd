extends Camera

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Camera : Camera, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Camera)
		AutoObjects.A_Node(q_Camera)
		AutoObjects.A_Spatial(q_Camera)

		
	### START TEMP
	var temp_Environment : Environment = Environment.new()
#?#	AutoResourcesEnvironment.nodeFunction(temp_Environment)
	
	### END TEMP
	
	if randi() % 2 == 1:
		q_Camera.set_keep_aspect_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera.set_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera.set_environment(temp_Environment)
	if randi() % 2 == 1:
		q_Camera.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_doppler_tracking(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera.set_projection(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera.set_current(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera.set_fov(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_frustum_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera.set_znear(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_zfar(Autoload.get_float())

	if randi() % 2 == 1:
		q_Camera.clear_current(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera.get_camera_rid()
	if randi() % 2 == 1:
		q_Camera.get_camera_transform()
	if randi() % 2 == 1:
		q_Camera.get_cull_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera.get_frustum()
	if randi() % 2 == 1:
		q_Camera.is_position_behind(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Camera.make_current()
	if randi() % 2 == 1:
		q_Camera.project_local_ray_normal(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera.project_position(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera.project_ray_normal(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera.project_ray_origin(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera.set_cull_mask_bit(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera.set_frustum(Autoload.get_float(),Autoload.get_vector2(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_orthogonal(Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.set_perspective(Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera.unproject_position(Autoload.get_vector3())
