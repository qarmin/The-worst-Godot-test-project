extends Particles

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Particles : Particles, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Particles)
		AutoObjects.A_Node(q_Particles)
		AutoObjects.A_Spatial(q_Particles)
		AutoObjects.A_VisualInstance(q_Particles)
		AutoObjects.A_GeometryInstance(q_Particles)
		
	### START TEMP
	var temp_ParticlesMaterial : ParticlesMaterial = ParticlesMaterial.new()
#?#	AutoResourcesParticlesMaterial.nodeFunction(temp_ParticlesMaterial)
	
	var temp_CubeMesh : CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)
	
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_Particles.set_emitting(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles.set_amount(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_Particles.set_lifetime(Autoload.get_floatf(1.0)) 
	if randi() % 2 == 1:
		q_Particles.set_one_shot(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles.set_pre_process_time(Autoload.get_floatf(1.0)) 
	if randi() % 2 == 1:
		q_Particles.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_Particles.set_explosiveness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_Particles.set_randomness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_Particles.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_Particles.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles.set_visibility_aabb(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_Particles.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles.set_draw_order(Autoload.get_int()) #DrawOrder
	if randi() % 2 == 1:
		q_Particles.set_process_material(temp_ParticlesMaterial)
	if randi() % 2 == 1:
		q_Particles.set_draw_passes(Autoload.get_int())
	if randi() % 2 == 1:
		q_Particles.set_draw_pass_mesh(Autoload.get_int(), temp_CubeMesh)

	if randi() % 2 == 1:
		q_Particles.capture_aabb()
	if randi() % 2 == 1:
		q_Particles.restart()


