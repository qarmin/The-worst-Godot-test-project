extends CPUParticles3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CPUParticles3D: CPUParticles3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CPUParticles3D)
		AutoObjects.A_Node(q_CPUParticles3D)
		AutoObjects.A_Node3D(q_CPUParticles3D)
		AutoObjects.A_VisualInstance3D(q_CPUParticles3D)
		AutoObjects.A_GeometryInstance3D(q_CPUParticles3D)

	### START TEMP
	var temp_Curve: Curve = Curve.new()
#?#	AutoResourcesCurve.nodeFunction(temp_Curve)

	var temp_GPUParticles3D: GPUParticles3D = GPUParticles3D.new()
	Auto3DParticles.nodeFunction(temp_GPUParticles3D)

	var temp_CubeMesh: CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)

	var temp_Gradient: Gradient = Gradient.new()
#?#	AutoResourcesGradient.nodeFunction(temp_Gradient)
	### END TEMP

	if randi() % 2 == 1:
		q_CPUParticles3D.set_emitting(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_amount(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CPUParticles3D.set_lifetime(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_CPUParticles3D.set_one_shot(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_pre_process_time(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_CPUParticles3D.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_explosiveness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_randomness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_lifetime_randomness(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_draw_order(Autoload.get_int())  #DrawOrder
	if randi() % 2 == 1:
		q_CPUParticles3D.set_mesh(temp_CubeMesh)
	if randi() % 2 == 1:
		q_CPUParticles3D.set_emission_shape(Autoload.get_int())  #EmissionShape
	if randi() % 2 == 1:
		q_CPUParticles3D.set_emission_sphere_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_emission_box_extents(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_emission_points(Autoload.get_packedvector3array())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_emission_normals(Autoload.get_packedvector3array())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_emission_colors([Autoload.get_color(), Autoload.get_color()])

	if randi() % 2 == 1:
		q_CPUParticles3D.set_particle_flag(Autoload.get_int(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_CPUParticles3D.set_direction(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_spread(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_flatness(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_gravity(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_CPUParticles3D.set_param(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_param_curve(Autoload.get_int(), temp_Curve)
	if randi() % 2 == 1:
		q_CPUParticles3D.set_param_randomness(Autoload.get_int(), Autoload.get_float())

	if randi() % 2 == 1:
		q_CPUParticles3D.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_CPUParticles3D.set_color_ramp(temp_Gradient)

	if randi() % 2 == 1:
		q_CPUParticles3D.convert_from_particles(temp_GPUParticles3D)
	if randi() % 2 == 1:
		q_CPUParticles3D.restart()

	### CLEANING
	temp_GPUParticles3D.queue_free()
	### END CLEANING
