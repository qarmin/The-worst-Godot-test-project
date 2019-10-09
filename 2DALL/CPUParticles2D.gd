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
		if !Autoload.RANDI:
			
			set_emitting(bool(randi()%2))
			set_amount(randi()%4 + 1)
			restart()
			set_lifetime(randf())
			set_one_shot(bool(randi()%2))
			set_pre_process_time(randf())
			set_speed_scale(randf() * 50)
			set_explosiveness_ratio(randf())
			set_randomness_ratio(randf())
			set_fixed_fps(randi()%10 + 50)
			set_fractional_delta(bool(randi()%2))
			set_use_local_coordinates(bool(randi()%2))
			set_draw_order(randi()%2)
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			set_normalmap(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			set_emission_shape(randi()%5)
			set_emission_sphere_radius(randf() * 50)
			set_emission_rect_extents(Vector2(randf() * 50,randf() * 50))
			set_emission_points(PoolVector2Array([Vector2(1.0,1.0),Vector2(42.2,21)]))
			set_emission_normals(PoolVector2Array([Vector2(1.0,1.0),Vector2(42.2,21)]))
			set_emission_colors(PoolColorArray([Color()]))
			set_particle_flag(0,0)
			set_spread(randf() * 360)
			set_flatness(randf())
			set_gravity(Vector2(randf() * 50,randf() * 50))
			set("local_coords", bool(randi()%2))
			set("draw_order", randi()%2)
			set("texture", (Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false)))
			set("normalmap", (Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false)))
			set("emission_shape", randi()%5)
			set("flag_align_y", bool(randi()%2))
			
			for j in range(12): # range(12):
				set_param(j,randf() * 2)
				set_param_curve(j,Autoload.loadA("res://RES/Curve" + str(randi()%2+1) + ".tres",false))
				set_param_randomness(j,randf())
				
				
			if Autoload.WRONG_BUGS:
				set_amount(randi() % 4 - 2)
				restart()
				set_lifetime(randf() - 0.5)
				set_one_shot(bool(randi()%2))
				set_pre_process_time(randf() * 1 - 0.5)
				set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_explosiveness_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_randomness_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_fixed_fps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_fractional_delta(bool(randi()%2))
				set_use_local_coordinates(bool(randi()%2))
				set_draw_order(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()% 4 + 1) + ".png"))
				set_normalmap(Autoload.loadA("res://RES/Sprite" + str(randi()% 4 + 1) + ".png"))
				set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_emission_rect_extents(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_emission_points(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
				set_emission_normals(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
				set_emission_colors(PoolColorArray([Color(randf(),randf(),randf(),randf())]))
				set_particle_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_gravity(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set("local_coords", bool(randi()%2))
				set("draw_order", randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set("texture", (Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")))
				set("normalmap", (Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")))
				set("emission_shape", randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set("flag_align_y", bool(randi()%2))
				
				for j in range(12): # range(12):
					set_param(j,randf() * Autoload.RANGE - Autoload.RANGE / 2)
					set_param_curve(j,Autoload.loadA("res://RES/Curve" + str(randi() % 4 + 1) + ".tres"))
					set_param_randomness(j,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		else: #RANDI
			if randi() % 2 == 1:
				set_amount(randi() % 4 - 2)
			if randi() % 2 == 1:
				restart()
			if randi() % 2 == 1:
				set_lifetime(randf() - 0.5)
			if randi() % 2 == 1:
				set_one_shot(bool(randi()%2))
			if randi() % 2 == 1:
				set_pre_process_time(randf() * 1 - 0.5)
			if randi() % 2 == 1:
				set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_explosiveness_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_randomness_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_fixed_fps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_fractional_delta(bool(randi()%2))
			if randi() % 2 == 1:
				set_use_local_coordinates(bool(randi()%2))
			if randi() % 2 == 1:
				set_draw_order(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()% 4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_normalmap(Autoload.loadA("res://RES/Sprite" + str(randi()% 4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_emission_rect_extents(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_emission_points(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				set_emission_normals(PoolVector2Array([Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
			if randi() % 2 == 1:
				set_emission_colors(PoolColorArray([Color(randf(),randf(),randf(),randf())]))
			if randi() % 2 == 1:
				set_particle_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_gravity(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set("local_coords", bool(randi()%2))
			if randi() % 2 == 1:
				set("draw_order", randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("texture", (Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")))
			if randi() % 2 == 1:
				set("normalmap", (Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")))
			if randi() % 2 == 1:
				set("emission_shape", randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("flag_align_y", bool(randi()%2))
				
			for j in range(12): # range(12):
				if randi() % 2 == 1:
					set_param(j,randf() * Autoload.RANGE - Autoload.RANGE / 2)
					set_param_curve(j,Autoload.loadA("res://RES/Curve" + str(randi() % 2 + 1) + ".tres"))
					set_param_randomness(j,randf() * Autoload.RANGE - Autoload.RANGE / 2)
