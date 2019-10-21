extends Node2D

var q_ParticlesMaterial : ParticlesMaterial = ParticlesMaterial.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ParticlesMaterial,true)

func nodeFunction(q_ParticlesMaterial : ParticlesMaterial, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ParticlesMaterial = ParticlesMaterial.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_ParticlesMaterial)

	if randi() % 2 == 1:
		q_ParticlesMaterial.set_render_priority(Autoload.get_int())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new()) # LOOP DON'T CHANGE
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_trail_divisor(Autoload.get_int())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_trail_size_modifier(CurveTexture.new())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_trail_color_modifier(Autoload.loadA("Gradient.tres"))
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_shape(Autoload.get_int())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_sphere_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_box_extents(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_point_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_normal_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_color_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_emission_point_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_spread(Autoload.get_float())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_flatness(Autoload.get_float())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_gravity(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_color_ramp(Autoload.loadA("Sprite.png"))

	if randi() % 2 == 1:
		q_ParticlesMaterial.set_flag(Autoload.get_int(),Autoload.get_bool())

	if randi() % 2 == 1:
		q_ParticlesMaterial.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_param_randomness(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_ParticlesMaterial.set_param_texture(Autoload.get_int(),Autoload.loadA("Sprite.png"))
