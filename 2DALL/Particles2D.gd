extends Particles2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		var pm : ParticlesMaterial = ParticlesMaterial.new()
		var CT : CurveTexture  = CurveTexture.new()

		if randi() % 2 == 1:
			set_emitting(Autoload.get_bool())
		if randi() % 2 == 1:
			set_amount(randi()%4-2)
		if randi() % 2 == 1:
			set_lifetime(randf() - 0.5)
		if randi() % 2 == 1:
			set_one_shot(Autoload.get_bool())
		if randi() % 2 == 1:
			set_pre_process_time(randf() * 1 - 0.5)
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
			set_visibility_rect(Rect2(Vector2(Autoload.get_float(), Autoload.get_float()),Vector2(Autoload.get_float(), Autoload.get_float())))
		if randi() % 2 == 1:
			set_use_local_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_order(Autoload.get_int())
			
		if randi() % 2 == 1:
			pm.set_render_priority(Autoload.get_int())
		if randi() % 2 == 1:
			pm.set_next_pass(ParticlesMaterial.new())
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
			pm.set_emission_box_extents(Vector3(Autoload.get_float(), Autoload.get_float(), Autoload.get_float()))
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
			pm.set_gravity(Vector3(Autoload.get_float(), Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			pm.set_color(Autoload.get_color())
		if randi() % 2 == 1:
			pm.set_color_ramp(Autoload.loadA("Sprite.png"))
			
		if randi() % 2 == 1:
			pm.set_flag(pm.FLAG_ALIGN_Y_TO_VELOCITY,Autoload.get_bool())
		if randi() % 2 == 1:
			pm.set_flag(pm.FLAG_ROTATE_Y ,Autoload.get_bool())
		if randi() % 2 == 1:
			pm.set_flag(pm.FLAG_DISABLE_Z,Autoload.get_bool())
			
			
			for j in range(12): # range(12):
				if randi() % 2 == 1:
					pm.set_param(j,Autoload.get_float())
				if randi() % 2 == 1:
					pm.set_param_randomness(j,Autoload.get_float())
				if randi() % 2 == 1:
					pm.set_param_texture(j,Autoload.loadA("Sprite.png"))
			
		if randi() % 2 == 1:
			set_process_material(pm)
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_normal_map(Autoload.loadA("Sprite.png"))
			
		if randi() % 2 == 1:
			qq += str(capture_rect())
		if randi() % 2 == 1:
			restart()
