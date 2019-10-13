extends Node2D

var q_ParticlesMaterial : ParticlesMaterial = ParticlesMaterial.new()
var CT : CurveTexture = CurveTexture.new()
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
			q_ParticlesMaterial = ParticlesMaterial.new()
			CT = CurveTexture.new()

		
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_render_priority(Autoload.get_int())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
		if randi() % 2 == 1:
			CT.set_width(Autoload.get_int())
		if randi() % 2 == 1:
			CT.set_curve(Autoload.loadA("Curve.tres"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_trail_divisor(Autoload.get_int())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_trail_size_modifier(CT)
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_trail_color_modifier(Autoload.loadA("Gradient.tres"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_shape(Autoload.get_int())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_sphere_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_box_extents(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_point_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_normal_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_color_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_point_count(Autoload.get_int())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_spread(Autoload.get_float())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_flatness(Autoload.get_float())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_gravity(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_color_ramp(Autoload.loadA("Sprite.png"))
			
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_flag(Autoload.get_int(),Autoload.get_bool())
			
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_param(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_param_randomness(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_param_texture(Autoload.get_int(),Autoload.loadA("Sprite.png"))
