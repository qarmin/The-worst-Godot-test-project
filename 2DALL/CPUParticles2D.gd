extends CPUParticles2D

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

		if randi() % 2 == 1:
			set_amount(randi() % 4 - 2)
		if randi() % 2 == 1:
			restart()
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
			set_use_local_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			set_draw_order(Autoload.get_int())
		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_normalmap(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_emission_shape(Autoload.get_int())
		if randi() % 2 == 1:
			set_emission_sphere_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_emission_rect_extents(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_emission_points(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			set_emission_normals(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			set_emission_colors(Autoload.get_poolcolorarray())
		if randi() % 2 == 1:
			set_particle_flag(Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			set_spread(Autoload.get_float())
		if randi() % 2 == 1:
			set_flatness(Autoload.get_float())
		if randi() % 2 == 1:
			set_gravity(Autoload.get_vector2())
		if randi() % 2 == 1:
			set("local_coords", Autoload.get_bool())
		if randi() % 2 == 1:
			set("draw_order", Autoload.get_int())
		if randi() % 2 == 1:
			set("texture", (Autoload.loadA("Sprite.png")))
		if randi() % 2 == 1:
			set("normalmap", (Autoload.loadA("Sprite.png")))
		if randi() % 2 == 1:
			set("emission_shape", Autoload.get_int())
		if randi() % 2 == 1:
			set("flag_align_y", Autoload.get_bool())
			
		for j in range(12): # range(12):
			if randi() % 2 == 1:
				set_param(j,Autoload.get_float())
				set_param_curve(j,Autoload.loadA("Curve.tres"))
				set_param_randomness(j,Autoload.get_float())
