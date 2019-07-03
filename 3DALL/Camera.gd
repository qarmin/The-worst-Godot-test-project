extends Camera

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_keep_aspect_mode(randi()%2)
		set_cull_mask(randi()%20)
		#set_environment(Environment.new())
		set_h_offset(randf() * 50)
		set_v_offset(randf() * 50)
		set_doppler_tracking(randi()%3)
		set_projection(randi()%3)
		###set_current(bool(randi()%2))
		set_fov(randf() * 50)
		set_size(randf() * 50)
		set_frustum_offset(Vector2(randf() * 50,randf() * 50))
		set_znear(randf() * 50)
		set_zfar(randf() * 50)
		
		###clear_current(bool(randi()%2))
		qq += str(get_camera_rid())
		qq += str(get_camera_transform())
		qq += str(get_cull_mask_bit(randi()%20))
		qq += str(get_frustum())
		qq += str(is_position_behind(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		###make_current()
		qq += str(project_local_ray_normal(Vector2(randf() * 50,randf() * 50)))
		qq += str(project_position(Vector2(randf() * 50,randf() * 50)))
		qq += str(project_ray_normal(Vector2(randf() * 50,randf() * 50)))
		qq += str(project_ray_origin(Vector2(randf() * 50,randf() * 50)))
		set_cull_mask_bit(randi()%20,bool(randi()%2))
		set_frustum(randf() * 50,Vector2(randf() * 50,randf() * 50), randf() * 50, randf() * 50)
		set_orthogonal(randf() * 50,randf() * 50,randf() * 50)
		set_perspective(randf() * 50,randf() * 50,randf() * 50)
		qq += str(unproject_position(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		
	

		if Autoload.WRONG_BUGS:
			set_keep_aspect_mode(randi() % 1000 - 500)
			set_cull_mask(randi() % 1000 - 500)
			set_environment(Environment.new())
			set_h_offset(randf() * 1000 - 500)
			set_v_offset(randf() * 1000 - 500)
			set_doppler_tracking(randi() % 1000 - 500)
			set_projection(randi() % 1000 - 500)
			set_current(bool(randi()%2))
			set_fov(randf() * 1000 - 500)
			set_size(randf() * 1000 - 500)
			set_frustum_offset(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			set_znear(randf() * 1000 - 500)
			set_zfar(randf() * 1000 - 500)
			
			clear_current(bool(randi()%2))
			qq += str(get_camera_rid())
			qq += str(get_camera_transform())
			qq += str(get_cull_mask_bit(randi() % 1000 - 500))
			qq += str(get_frustum())
			qq += str(is_position_behind(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			make_current()
			qq += str(project_local_ray_normal(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(project_position(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(project_ray_normal(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(project_ray_origin(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			set_cull_mask_bit(randi() % 1000 - 500,bool(randi()%2))
			set_frustum(randf() * 1000 - 500,Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500, randf() * 1000 - 500)
			set_orthogonal(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)
			set_perspective(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)
			qq += str(unproject_position(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500)))
