extends CPUParticles2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	
	
	
	
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_emitting(bool(randi()%2))
		if randi() % 3 == 0: # Changing amount of partices also reset it 
			set_amount(randi()%40+10)
		if randi() % 4 == 0:
			restart()
		set_lifetime(randf() * 10 + 5)
		set_one_shot(bool(randi()%2))
		set_pre_process_time(randf() * 50)
		set_speed_scale(randf() * 50)
		set_explosiveness_ratio(randf())
		set_randomness_ratio(randf())
		set_fixed_fps(randi()%10 + 50)
		set_fractional_delta(bool(randi()%2))
		set_use_local_coordinates(bool(randi()%2))
		set_draw_order(randi()%2)
		set_texture(load("Sprite" + str(randi()%4 + 1) + ".png"))
		set_normalmap(load("Sprite" + str(randi()%4 + 1) + ".png"))
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
		set("texture", (load("res://Sprite" + str(randi()%4 + 1) + ".png")))
		set("normalmap", (load("res://Sprite" + str(randi()%4 + 1) + ".png")))
		set("emission_shape", randi()%5)
		set("flag_align_y", bool(randi()%2))
		
		for j in range(12): # range(12):
			set_param(j,randf() * 2)
			set_param_curve(j,load("res://Curve" + str(randi()%2+1) + ".tres"))
			set_param_randomness(j,randf())
			
			
		if Autoload.WRONG_BUGS:
			if randi() % 3 == 0: # Changing amount of partices also reset it 
				set_amount(randi() % 300 - 150)
			if randi() % 4 == 0:
				restart()
			set_lifetime(randf() * 1000 - 500)
			set_one_shot(bool(randi()%2))
			set_pre_process_time(randf() * 1000 - 500)
			set_speed_scale(randf() * 1000 - 500)
			set_explosiveness_ratio(randf() * 1000 - 500)
			set_randomness_ratio(randf() * 1000 - 500)
			set_fixed_fps(randi() % 1000 - 500)
			set_fractional_delta(bool(randi()%2))
			set_use_local_coordinates(bool(randi()%2))
			set_draw_order(randi() % 1000 - 500)
			set_texture(load("Sprite" + str(randi() % 1000 - 500) + ".png"))
			set_normalmap(load("Sprite" + str(randi() % 1000 - 500) + ".png"))
			set_emission_shape(randi() % 1000 - 500)
			set_emission_sphere_radius(randf() * 1000 - 500)
			set_emission_rect_extents(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_emission_points(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			set_emission_normals(PoolVector2Array([Vector2(randf() * 1000 - 500, randf() * 1000 - 500),Vector2(randf() * 1000 - 500, randf() * 1000 - 500)]))
			set_emission_colors(PoolColorArray([Color(randf(),randf(),randf(),randf())]))
			set_particle_flag(randi() % 1000 - 500,randi() % 1000 - 500)
			set_spread(randf() * 1000 - 500)
			set_flatness(randf() * 1000 - 500)
			set_gravity(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set("local_coords", bool(randi()%2))
			set("draw_order", randi() % 1000 - 500)
			set("texture", (load("res://Sprite" + str(randi()%4 + 1) + ".png")))
			set("normalmap", (load("res://Sprite" + str(randi()%4 + 1) + ".png")))
			set("emission_shape", randi() % 1000 - 500)
			set("flag_align_y", bool(randi()%2))
			
			for j in range(12): # range(12):
				set_param(j,randf() * 1000 - 500)
				set_param_curve(j,load("res://Curve" + str(randi() % 1000 - 500) + ".tres"))
				set_param_randomness(j,randf() * 1000 - 500)
