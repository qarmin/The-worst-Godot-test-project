extends Node2D

var q_ProceduralSky : ProceduralSky = ProceduralSky.new()
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
			q_ProceduralSky = ProceduralSky.new()
			
		
		if randi() % 2 == 1:
			q_ProceduralSky.set_sky_top_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_ProceduralSky.set_sky_horizon_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_ProceduralSky.set_sky_curve(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sky_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_ground_bottom_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_ProceduralSky.set_ground_horizon_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_ProceduralSky.set_ground_curve(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_ground_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_latitude(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_longitude(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_angle_min(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_angle_max(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_curve(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_sun_energy(Autoload.get_randf())
		if randi() % 2 == 1:
			q_ProceduralSky.set_texture_size(Autoload.get_randi()) # TextureSize
