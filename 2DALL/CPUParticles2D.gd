extends CPUParticles2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CPUParticles2D : CPUParticles2D, can_reset : bool = false) -> void:

	if randi()%2 == 1:
		AutoObjects.A_Object(q_CPUParticles2D)
		AutoObjects.A_Node(q_CPUParticles2D)
		AutoObjects.A_CanvasItem(q_CPUParticles2D)
		AutoObjects.A_Node2D(q_CPUParticles2D)
		
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	var temp_Curve : Curve = Curve.new()
#?#	AutoResourcesCurve.nodeFunction(temp_Curve)
	
	### END TEMP
	
	if randi() % 2 == 1:
		q_CPUParticles2D.set_amount(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CPUParticles2D.restart()
	if randi() % 2 == 1:
		q_CPUParticles2D.set_lifetime(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_CPUParticles2D.set_one_shot(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_pre_process_time(Autoload.get_floatf(1.0)) 
	if randi() % 2 == 1:
		q_CPUParticles2D.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_explosiveness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_randomness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_draw_order(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_CPUParticles2D.set_normalmap(temp_ImageTexture)
	if randi() % 2 == 1:
		q_CPUParticles2D.set_emission_shape(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_emission_sphere_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_emission_rect_extents(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_emission_points(Autoload.get_packedvector2array())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_emission_normals(Autoload.get_packedvector2array())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_emission_colors(Autoload.get_packedcolorarray())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_particle_flag(Autoload.get_int(),Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_spread(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_gravity(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_CPUParticles2D.set("local_coords", Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles2D.set("draw_order", Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles2D.set("texture", temp_ImageTexture)
	if randi() % 2 == 1:
		q_CPUParticles2D.set("normalmap", temp_ImageTexture)
	if randi() % 2 == 1:
		q_CPUParticles2D.set("emission_shape", Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles2D.set("flag_align_y", Autoload.get_bool())

	if randi() % 2 == 1:
		q_CPUParticles2D.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles2D.set_param_curve(Autoload.get_int(),temp_Curve)
	if randi() % 2 == 1:
		q_CPUParticles2D.set_param_randomness(Autoload.get_int(),Autoload.get_float())
