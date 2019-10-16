extends Particles

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		var pm : ParticlesMaterial = ParticlesMaterial.new()
		var CT : CurveTexture  = CurveTexture.new()

		if randi() % 2 == 1:
			set_emitting(Autoload.get_bool())
		if randi() % 2 == 1:
			set_amount(Autoload.get_inti(5))
		if randi() % 2 == 1:
			set_lifetime(Autoload.get_floatf(1.0)) 
		if randi() % 2 == 1:
			set_one_shot(Autoload.get_bool())
		if randi() % 2 == 1:
			set_pre_process_time(Autoload.get_floatf(1.0)) 
		if randi() % 2 == 1:
			set_speed_scale(Autoload.get_float())
		if randi() % 2 == 1:
			set_explosiveness_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			set_randomness_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			set_fixed_fps(Autoload.get_int())
		if randi() % 2 == 1:
			set_fractional_delta(Autoload.get_bool())
		if randi() % 2 == 1:
			set_visibility_aabb(Autoload.get_aabb())
		if randi() % 2 == 1:
			set_use_local_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_order(Autoload.get_int())
		if randi() % 2 == 1:
			set_draw_pass_mesh(Autoload.get_int(), Autoload.loadA("CubeMesh.tres"))

		if randi() % 2 == 1:
			pm.set_render_priority(Autoload.get_int())
		if randi() % 2 == 1:
			CT = CurveTexture.new()
		if randi() % 2 == 1:
			CT.set_width(Autoload.get_int())
		if randi() % 2 == 1:
			CT.set_curve(Autoload.loadA("Curve.tres"))
		if randi() % 2 == 1:
			pm.set_trail_divisor(Autoload.get_int())
		if randi() % 2 == 1:
			pm.set_trail_size_modifier(CT)
		if randi() % 2 == 1:
			pm.set_trail_color_modifier(Autoload.loadA("Gradient.tres"))
		if randi() % 2 == 1:
			pm.set_emission_shape(Autoload.get_int())
		if randi() % 2 == 1:
			pm.set_emission_sphere_radius(Autoload.get_float())
		if randi() % 2 == 1:
			pm.set_emission_box_extents(Autoload.get_vector3())
		if randi() % 2 == 1:
			pm.set_emission_point_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			pm.set_emission_normal_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			pm.set_emission_color_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			pm.set_emission_point_count(Autoload.get_int())
		if randi() % 2 == 1:
			pm.set_spread(Autoload.get_float())
		if randi() % 2 == 1:
			pm.set_flatness(Autoload.get_float())
		if randi() % 2 == 1:
			pm.set_gravity(Autoload.get_vector3())
		if randi() % 2 == 1:
			pm.set_color(Autoload.get_color())
		if randi() % 2 == 1:
			pm.set_color_ramp(Autoload.loadA("Sprite.png"))

		if randi() % 2 == 1:
			pm.set_flag(Autoload.get_int(),Autoload.get_bool())

		if randi() % 2 == 1:
			pm.set_param(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			pm.set_param_randomness(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			pm.set_param_texture(Autoload.get_int(),Autoload.loadA("Sprite.png"))

		if randi() % 2 == 1:
			restart()

		set_process_material(pm)

