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
			q_ParticlesMaterial.set_render_priority(Autoload.get_randi())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_next_pass(ParticlesMaterial.new())
		if randi() % 2 == 1:
			CT.set_width(Autoload.get_randi())
		if randi() % 2 == 1:
			CT.set_curve(Autoload.loadA("res://RES/Curve.tres"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_trail_divisor(Autoload.get_randi())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_trail_size_modifier(CT)
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_trail_color_modifier(Autoload.loadA("res://RES/Gradient1.tres"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_shape(Autoload.get_randi())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_sphere_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_box_extents(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_point_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_normal_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_color_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_emission_point_count(Autoload.get_randi())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_spread(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_flatness(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_gravity(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_color_ramp(Autoload.loadA("res://RES/Sprite.png"))
			
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_flag(Autoload.get_randi(),bool(randi()%2))
			
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_param(Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_param_randomness(Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			q_ParticlesMaterial.set_param_texture(Autoload.get_randi(),Autoload.loadA("res://RES/Sprite.png"))
