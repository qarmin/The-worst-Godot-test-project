extends CPUParticles

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CPUParticles : CPUParticles, can_reset : bool = false) -> void:

	AutoObjects.A_Object(self)
	AutoObjects.A_Node(self)
	AutoObjects.A_Spatial(self)
	AutoObjects.A_VisualInstance(self)
	AutoObjects.A_GeometryInstance(self)
	
	var particles : Particles = Particles.new()
	
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
		q_CPUParticles.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CPUParticles.set_draw_order(Autoload.get_int())
	if randi() % 2 == 1:
		q_CPUParticles.set_mesh(Mesh.new())
	if randi() % 2 == 1:
		q_CPUParticles.set_emission_shape(Autoload.get_int())
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
		q_CPUParticles.set_spread(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_flatness(Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_gravity(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_CPUParticles.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_CPUParticles.set_param_curve(Autoload.get_int(),Autoload.loadA("Curve.tres"))
	if randi() % 2 == 1:
		q_CPUParticles.set_param_randomness(Autoload.get_int(),Autoload.get_float())

	if randi() % 2 == 1:
		q_CPUParticles.convert_from_particles(particles)
	if randi() % 2 == 1:
		q_CPUParticles.restart()
		
	particles.queue_free()
