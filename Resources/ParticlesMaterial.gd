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
		var CT : CurveTexture
		
		q_ParticlesMaterial.set_render_priority(randi() % 50)
		q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
		CT = CurveTexture.new()
		CT.set_width(randi() % 50 + 32)
		CT.set_curve(load("res://Curve" + str(randi()%3 + 1) + ".tres"))
		q_ParticlesMaterial.set_trail_divisor(randi() % 50)
		q_ParticlesMaterial.set_trail_size_modifier(CT)
		q_ParticlesMaterial.set_trail_color_modifier(load("res://Gradient1.tres"))
		q_ParticlesMaterial.set_emission_shape(randi() % 50)
		q_ParticlesMaterial.set_emission_sphere_radius(randf() * 50)
		q_ParticlesMaterial.set_emission_box_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_ParticlesMaterial.set_emission_point_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		q_ParticlesMaterial.set_emission_normal_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		q_ParticlesMaterial.set_emission_color_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		q_ParticlesMaterial.set_emission_point_count(randi() % 50)
		q_ParticlesMaterial.set_spread(randf() * 50)
		q_ParticlesMaterial.set_flatness(randf() * 50)
		q_ParticlesMaterial.set_gravity(Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_ParticlesMaterial.set_color(Color(randf() * 50,randf() * 50,randf() * 50,randf() * 50))
		q_ParticlesMaterial.set_color_ramp(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		
		q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_ALIGN_Y_TO_VELOCITY,bool(randi()%2))
		q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_ROTATE_Y ,bool(randi()%2))
		q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_DISABLE_Z,bool(randi()%2))
		
		#Setting last PARAM_ANIM_OFFSET (11) cause GLES 3 error
		for j in range(12): # range(12):
			q_ParticlesMaterial.set_param(j,randf() * 50)
			q_ParticlesMaterial.set_param_randomness(j,randf() * 50)
			q_ParticlesMaterial.set_param_texture(j,load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			
		if Autoload.WRONG_BUGS:
			
			q_ParticlesMaterial.set_render_priority(randi() % 1000 - 500)
			q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
			CT = CurveTexture.new()
			CT.set_width(randi() % 1000 - 500)
			CT.set_curve(load("res://Curve" + str(randi()%3 + 1) + ".tres"))
			q_ParticlesMaterial.set_trail_divisor(randi() % 1000 - 500)
			q_ParticlesMaterial.set_trail_size_modifier(CT)
			q_ParticlesMaterial.set_trail_color_modifier(load("res://Gradient1.tres"))
			q_ParticlesMaterial.set_emission_shape(randi() % 1000 - 500)
			q_ParticlesMaterial.set_emission_sphere_radius(randf() * 1000 - 500)
			q_ParticlesMaterial.set_emission_box_extents(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_ParticlesMaterial.set_emission_point_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			q_ParticlesMaterial.set_emission_normal_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			q_ParticlesMaterial.set_emission_color_texture(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			q_ParticlesMaterial.set_emission_point_count(randi() % 1000 - 500)
			q_ParticlesMaterial.set_spread(randf() * 1000 - 500)
			q_ParticlesMaterial.set_flatness(randf() * 1000 - 500)
			q_ParticlesMaterial.set_gravity(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_ParticlesMaterial.set_color(Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			q_ParticlesMaterial.set_color_ramp(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			
			q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_ALIGN_Y_TO_VELOCITY,bool(randi()%2))
			q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_ROTATE_Y ,bool(randi()%2))
			q_ParticlesMaterial.set_flag(q_ParticlesMaterial.FLAG_DISABLE_Z,bool(randi()%2))
			
			#Setting last PARAM_ANIM_OFFSET (11) cause GLES 3 error
			for j in range(12): # range(12):
				q_ParticlesMaterial.set_param(j,randf() * 1000 - 500)
				q_ParticlesMaterial.set_param_randomness(j,randf() * 1000 - 500)
				q_ParticlesMaterial.set_param_texture(j,load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			
