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
				set_param_curve(j,Autoload.loadA("res://RES/Curve.tres"))
				set_param_randomness(j,randf() * Autoload.RANGE - Autoload.RANGE / 2)
