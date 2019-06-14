extends Particles

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_emitting(bool(randi()%2))
		if randi()%7 == 0:
			set_amount(randi()%15 + 40)
		set_lifetime(randf() * 50)
		set_one_shot(bool(randi()%2))
		set_pre_process_time(randf() * 5)
		set_speed_scale(randf() * 4)
		set_explosiveness_ratio(randf())
		set_randomness_ratio(randf())
		set_fixed_fps(randi()%30 + 30)
		set_fractional_delta(bool(randi()%2))
		set_visibility_aabb(AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		set_use_local_coordinates(bool(randi()%2))
		set_draw_order(randi()%3)
		# Luka na process_material który jest na końcu
		for i in range(1):#MAX_DRAW_PASSES):
			set_draw_pass_mesh(i, CubeMesh.new())
		
		var pm : ParticlesMaterial = ParticlesMaterial.new()
		pm.set_render_priority(randi()%200 - 100)
		pm.set_next_pass(ParticlesMaterial.new())
		var CT : CurveTexture  = CurveTexture.new()
		CT.set_width(randi()%10 + 50)
		CT.set_curve(load("res://Curve" + str(randi()%3 + 1) + ".tres"))
		pm.set_trail_divisor(randi()%12)
		pm.set_trail_size_modifier(CT)
		pm.set_trail_color_modifier(load("res://Gradient1.tres"))
		pm.set_emission_shape(randi()%5)
		pm.set_emission_sphere_radius(randf() * 50)
		pm.set_emission_box_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
		pm.set_emission_point_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		pm.set_emission_normal_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		pm.set_emission_color_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		pm.set_emission_point_count(randi() % 50)
		pm.set_spread(randf() * 360)
		pm.set_flatness(randf())
		pm.set_gravity(Vector3(randf() * 10 - 5,randf() * 10 - 5,randf() * 10 - 5))
		pm.set_color(Color(randf(),randf(),randf(),randf()))
		pm.set_color_ramp(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		
		pm.set_flag(pm.FLAG_ALIGN_Y_TO_VELOCITY,bool(randi()%2))
		pm.set_flag(pm.FLAG_ROTATE_Y ,bool(randi()%2))
		pm.set_flag(2,bool(randi()%2))#pm.FLAG_DISABLE_Z,bool(randi()%2))
		
		#Setting last PARAM_ANIM_OFFSET (11) cause GLES 3 error
		for j in range(11): # range(12):
			pm.set_param(j,randf() * 2)
			pm.set_param_randomness(j,randf())
			pm.set_param_texture(j,load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		
		set_process_material(pm)
		
		if randi()%7 == 0:
			restart()

		if Autoload.WRONG_BUGS:
			set_emitting(bool(randi()%2))
			if randi()%7 == 0:
				set_amount(randi()%60 - 40)
			set_lifetime(randf() * 1000 - 500)
			set_one_shot(bool(randi()%2))
			set_pre_process_time(randf() * 10 - 5)
			set_speed_scale(randf() * 1000 - 500)
			set_explosiveness_ratio(randf())
			set_randomness_ratio(randf())
			set_fixed_fps(randi() % 1000 - 500)
			set_fractional_delta(bool(randi()%2))
			set_visibility_aabb(AABB(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			set_use_local_coordinates(bool(randi()%2))
			set_draw_order(randi() % 1000 - 500)
			# Luka na process_material który jest na końcu
			for i in range(1):#MAX_DRAW_PASSES):
				set_draw_pass_mesh(i, CubeMesh.new())
			
			pm = ParticlesMaterial.new()
			pm.set_render_priority(randi() % 1000 - 500)
			pm.set_next_pass(ParticlesMaterial.new())
			CT = CurveTexture.new()
			CT.set_width(randi() % 1000 - 500)
			CT.set_curve(load("res://Curve" + str(randi()%3 + 1) + ".tres"))
			pm.set_trail_divisor(randi() % 1000 - 500)
			pm.set_trail_size_modifier(CT)
			pm.set_trail_color_modifier(load("res://Gradient1.tres"))
			pm.set_emission_shape(randi() % 1000 - 500)
			pm.set_emission_sphere_radius(randf() * 1000 - 500)
			pm.set_emission_box_extents(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			pm.set_emission_point_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			pm.set_emission_normal_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			pm.set_emission_color_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			pm.set_emission_point_count(randi() % 1000 - 500)
			pm.set_spread(randf() * 1000 - 500)
			pm.set_flatness(randf() * 1000 - 500)
			pm.set_gravity(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			pm.set_color(Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			pm.set_color_ramp(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			
			pm.set_flag(pm.FLAG_ALIGN_Y_TO_VELOCITY,bool(randi()%2))
			pm.set_flag(pm.FLAG_ROTATE_Y ,bool(randi()%2))
			pm.set_flag(2,bool(randi()%2))#pm.FLAG_DISABLE_Z,bool(randi()%2))
			
			#Setting last PARAM_ANIM_OFFSET (11) cause GLES 3 error
			for j in range(12): # range(12):
				pm.set_param(j,randf() * 1000 - 500)
				pm.set_param_randomness(j,randf() * 1000 - 500)
				pm.set_param_texture(j,load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			
			set_process_material(pm)
			
			if randi()%7 == 0:
				restart()
