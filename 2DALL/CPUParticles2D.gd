extends CPUParticles2D

var counter : float
const C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	
	#  Vector2(randf() * 50,randf() * 50)
	#  randf() * 50
	#  bool(randi()%2)
	#  randi()%50
	
	if counter <= 0:
		
		set_emitting(bool(randi()%2))
		if randi() % 3 == 0: # Changing amount of partices also reset it 
			set_amount(randi()%500)
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
		set("ocal_coords", bool(randi()%2))
		set("draw_order", randi()%2)
		set("texture", (load("res://Sprite" + str(randi()%4 + 1) + ".png")))
		set("normalmap", (load("res://Sprite" + str(randi()%4 + 1) + ".png")))
		set("emission_shape", randi()%5)
		set("flag_align_y", bool(randi()%2))
		set("initial_velocity", randf()*5)
		set("initial_velocity_random", randf())
		set("angular_velocity", randf()*5)
		set("angular_velocity_random", randf())
		set("angular_velocity_curve", randf()*5)
		set("linear_accel", randf()*5)
		set("linear_accel_random", randf())
		set("linear_accel_curve", Curve)
		set("radial_accel", randf()*5)
		set("radial_accel_random", randf())
		set("radial_accel_curve", load("res://Curve" + str(randi()%2) + ".tres"))
		set("tangential_accel", randf()*5)
		set("tangential_accel_random", randf())
		set("tangential_accel_curve", load("res://Curve" + str(randi()%2) + ".tres"))
		set("damping", randf()*5)
		set("damping_random", randf())
		set("damping_curve", load("res://Curve" + str(randi()%2 + 1) + ".tres"))
		set("angle", randf()*5)
		set("angle_random", randf())
		set("angle_curve", load("res://Curve" + str(randi()%2) + ".tres"))
		set("scale_amount", randf())
		set("scale_amount_random", randf())
		set("scale_amount_curve", load("res://Curve" + str(randi()%2) + ".tres"))
		set("color", Color(randf(),randf(),randf(),randf()))
		set("color_ramp", load("res://Gradient1.tres"))
		set("hue_variation", randf()*5)
		set("hue_variation_random", randf())
		set("hue_variation_curve", load("res://Curve" + str(randi()%2) + ".tres"))
		set("anim_speed", randf()*5)
		set("anim_speed_random", randf())
		set("anim_speed_curve", load("res://Curve" + str(randi()%2) + ".tres"))
		set("anim_offset", randf()*5)
		set("anim_offset_random", randf())
		set("anim_offset_curve", load("res://Curve" + str(randi()%2) + ".tres"))

		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	
	