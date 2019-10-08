extends Node2D

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
		var q_ParticlesMaterial : ParticlesMaterial = ParticlesMaterial.new()
		var CT : CurveTexture = CurveTexture.new()
		if !Autoload.RANDI:
			
			q_ParticlesMaterial.set_render_priority(randi()%50)
			q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
			CT.set_width(randi()%50 + 32)
			CT.set_curve(load("res://RES/Curve" + str(randi()%3 + 1) + ".tres"))
			q_ParticlesMaterial.set_trail_divisor(randi()%50)
			q_ParticlesMaterial.set_trail_size_modifier(CT)
			q_ParticlesMaterial.set_trail_color_modifier(load("res://RES/Gradient1.tres"))
			q_ParticlesMaterial.set_emission_shape(randi()%50)
			q_ParticlesMaterial.set_emission_sphere_radius(randf() * 50)
			q_ParticlesMaterial.set_emission_box_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_ParticlesMaterial.set_emission_point_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			q_ParticlesMaterial.set_emission_normal_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			q_ParticlesMaterial.set_emission_color_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			q_ParticlesMaterial.set_emission_point_count(randi()%50)
			q_ParticlesMaterial.set_spread(randf() * 50)
			q_ParticlesMaterial.set_flatness(randf() * 50)
			q_ParticlesMaterial.set_gravity(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_ParticlesMaterial.set_color(Color(randf() * 50,randf() * 50,randf() * 50,randf() * 50))
			q_ParticlesMaterial.set_color_ramp(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			
			q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_ALIGN_Y_TO_VELOCITY,bool(randi()%2))
			q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_ROTATE_Y ,bool(randi()%2))
			q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_DISABLE_Z,bool(randi()%2))
			
			for j in range(12): # range(12):
				q_ParticlesMaterial.set_param(j,randf() * 50)
				q_ParticlesMaterial.set_param_randomness(j,randf() * 50)
				q_ParticlesMaterial.set_param_texture(j,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
			if Autoload.WRONG_BUGS:
				
				q_ParticlesMaterial.set_render_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
				CT.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				CT.set_curve(load("res://RES/Curve" + str(randi()%3 + 1) + ".tres"))
				q_ParticlesMaterial.set_trail_divisor(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_trail_size_modifier(CT)
				q_ParticlesMaterial.set_trail_color_modifier(load("res://RES/Gradient1.tres"))
				q_ParticlesMaterial.set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_emission_box_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_ParticlesMaterial.set_emission_point_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_ParticlesMaterial.set_emission_normal_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_ParticlesMaterial.set_emission_color_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_ParticlesMaterial.set_emission_point_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_gravity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_ParticlesMaterial.set_color(Color(randf(),randf(),randf(),randf()))
				q_ParticlesMaterial.set_color_ramp(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
				q_ParticlesMaterial.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
				q_ParticlesMaterial.set_param(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_param_randomness(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ParticlesMaterial.set_param_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				

		else: #RANDI
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_render_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
			if randi() % 2 == 1:
				CT.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				CT.set_curve(load("res://RES/Curve" + str(randi()%3 + 1) + ".tres"))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_trail_divisor(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_trail_size_modifier(CT)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_trail_color_modifier(load("res://RES/Gradient1.tres"))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_box_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_point_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_normal_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_color_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_emission_point_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_gravity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_color_ramp(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_param(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_param_randomness(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ParticlesMaterial.set_param_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
