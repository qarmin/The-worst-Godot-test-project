extends CPUParticles

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CPUParticles : CPUParticles, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CPUParticles)
		AutoObjects.A_Node(q_CPUParticles)
		AutoObjects.A_Spatial(q_CPUParticles)
		AutoObjects.A_VisualInstance(q_CPUParticles)
		AutoObjects.A_GeometryInstance(q_CPUParticles)
	
		
	### START TEMP
	var temp_Curve : Curve = Curve.new()
#?#	AutoResourcesCurve.nodeFunction(temp_Curve)
	
	var temp_Particles : Particles = Particles.new()
	Auto3DParticles.nodeFunction(temp_Particles)
	
	var temp_CubeMesh : CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)

	var temp_Gradient : Gradient = Gradient.new()
#?#	AutoResourcesGradient.nodeFunction(temp_Gradient)
	### END TEMP
	
	
	if randi() % 2 == 1:
		q_CPUParticles.set_emitting(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles.set_amount(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CPUParticles.set_lifetime(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_CPUParticles.set_one_shot(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles.set_pre_process_time(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_CPUParticles.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_explosiveness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_randomness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_lifetime_randomness(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles.set_draw_order(Autoload.get_int()) #DrawOrder
	if randi() % 2 == 1:
		q_CPUParticles.set_mesh(temp_CubeMesh)
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_shape(Autoload.get_int()) #EmissionShape
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_sphere_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_box_extents(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_points(Autoload.get_poolvector3array())
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_normals(Autoload.get_poolvector3array())
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_colors([Autoload.get_color(),Autoload.get_color()])

	if randi() % 2 == 1:
		q_CPUParticles.set_particle_flag(Autoload.get_int(),Autoload.get_bool())

	if randi() % 2 == 1:
		q_CPUParticles.set_direction(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_CPUParticles.set_spread(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_flatness(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_gravity(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_CPUParticles.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_param_curve(Autoload.get_int(),temp_Curve)
	if randi() % 2 == 1:
		q_CPUParticles.set_param_randomness(Autoload.get_int(),Autoload.get_float())

	if randi() % 2 == 1:
		q_CPUParticles.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_CPUParticles.set_color_ramp(temp_Gradient)

	if randi() % 2 == 1:
		q_CPUParticles.convert_from_particles(temp_Particles)
	if randi() % 2 == 1:
		q_CPUParticles.restart()
		
	### CLEANING
	temp_Particles.queue_free()
	### END CLEANING
