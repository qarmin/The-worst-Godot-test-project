extends GPUParticles2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_GPUParticles2D: GPUParticles2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_GPUParticles2D)
		AutoObjects.A_Node(q_GPUParticles2D)
		AutoObjects.A_CanvasItem(q_GPUParticles2D)
		AutoObjects.A_Node2D(q_GPUParticles2D)

	### START TEMP
	var temp_ParticlesMaterial: ParticlesMaterial = ParticlesMaterial.new()
#?#	AutoResourcesParticlesMaterial.nodeFunction(temp_ParticlesMaterial)

	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	### END TEMP

	if randi() % 2 == 1:
		q_GPUParticles2D.set_emitting(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_amount(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_GPUParticles2D.set_lifetime(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_GPUParticles2D.set_one_shot(Autoload.get_bool())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_GPUParticles2D.set_pre_process_time(Autoload.get_floatf(1.0))
	if randi() % 2 == 1:
		q_GPUParticles2D.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_explosiveness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_randomness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_visibility_rect(Autoload.get_rect2())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GPUParticles2D.set_draw_order(Autoload.get_int())  # DrawOrder
	if randi() % 2 == 1:
		q_GPUParticles2D.set_process_material(temp_ParticlesMaterial)
	if randi() % 2 == 1:
		q_GPUParticles2D.set_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_GPUParticles2D.set_normal_map(temp_ImageTexture)

	if randi() % 2 == 1:
		q_GPUParticles2D.capture_rect()
	if randi() % 2 == 1:
		q_GPUParticles2D.restart()
