extends Particles

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
		var pm : ParticlesMaterial = ParticlesMaterial.new()
		var CT : CurveTexture  = CurveTexture.new()
	
		if randi() % 2 == 1:
			set_emitting(bool(randi()%2))
		if randi() % 2 == 1:
			set_amount(randi()%4 - 2)
		if randi() % 2 == 1:
			set_lifetime(randf() - 0.5)
		if randi() % 2 == 1:
			set_one_shot(bool(randi()%2))
		if randi() % 2 == 1:
			set_pre_process_time(randf() * 1 - 0.5)
		if randi() % 2 == 1:
			set_speed_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			set_explosiveness_ratio(randf())
		if randi() % 2 == 1:
			set_randomness_ratio(randf())
		if randi() % 2 == 1:
			set_fixed_fps(Autoload.get_randi())
		if randi() % 2 == 1:
			set_fractional_delta(bool(randi()%2))
		if randi() % 2 == 1:
			set_visibility_aabb(AABB(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			set_use_local_coordinates(bool(randi()%2))
		if randi() % 2 == 1:
			set_draw_order(Autoload.get_randi())
			# Luka na process_material ktnory jest na koncu
		if randi() % 2 == 1:
			set_draw_pass_mesh(Autoload.get_randi(), CubeMesh.new())
			
		if randi() % 2 == 1:
			pm.set_render_priority(Autoload.get_randi())
		if randi() % 2 == 1:
			CT = CurveTexture.new()
		if randi() % 2 == 1:
			CT.set_width(Autoload.get_randi())
		if randi() % 2 == 1:
			CT.set_curve(Autoload.loadA("res://RES/Curve.tres"))
		if randi() % 2 == 1:
			pm.set_trail_divisor(Autoload.get_randi())
		if randi() % 2 == 1:
			pm.set_trail_size_modifier(CT)
		if randi() % 2 == 1:
			pm.set_trail_color_modifier(Autoload.loadA("res://RES/Gradient.tres"))
		if randi() % 2 == 1:
			pm.set_emission_shape(Autoload.get_randi())
		if randi() % 2 == 1:
			pm.set_emission_sphere_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			pm.set_emission_box_extents(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			pm.set_emission_point_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			pm.set_emission_normal_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			pm.set_emission_color_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			pm.set_emission_point_count(Autoload.get_randi())
		if randi() % 2 == 1:
			pm.set_spread(Autoload.get_randf())
		if randi() % 2 == 1:
			pm.set_flatness(Autoload.get_randf())
		if randi() % 2 == 1:
			pm.set_gravity(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			pm.set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			pm.set_color_ramp(Autoload.loadA("res://RES/Sprite.png"))
			
		if randi() % 2 == 1:
			pm.set_flag(Autoload.get_randi(),bool(randi()%2))
			
		if randi() % 2 == 1:
			pm.set_param(Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			pm.set_param_randomness(Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			pm.set_param_texture(Autoload.get_randi(),Autoload.loadA("res://RES/Sprite.png"))
			
		if randi() % 2 == 1:
			restart()
			
		set_process_material(pm)
			
