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
			
		var q_ProceduralSky : ProceduralSky = ProceduralSky.new()
		if !Autoload.RANDI:
			
			q_ProceduralSky.set_sky_top_color(Color(randf(),randf(),randf(),randf()))
			q_ProceduralSky.set_sky_horizon_color(Color(randf(),randf(),randf(),randf()))
			q_ProceduralSky.set_sky_curve(randf() * 50)
			q_ProceduralSky.set_sky_energy(randf() * 50)
			q_ProceduralSky.set_ground_bottom_color(Color(randf(),randf(),randf(),randf()))
			q_ProceduralSky.set_ground_horizon_color(Color(randf(),randf(),randf(),randf()))
			q_ProceduralSky.set_ground_curve(randf() * 50)
			q_ProceduralSky.set_ground_energy(randf() * 50)
			q_ProceduralSky.set_sun_color(Color(randf(),randf(),randf(),randf()))
			q_ProceduralSky.set_sun_latitude(randf() * 50)
			q_ProceduralSky.set_sun_longitude(randf() * 50)
			q_ProceduralSky.set_sun_angle_min(randf() * 50)
			q_ProceduralSky.set_sun_angle_max(randf() * 50)
			q_ProceduralSky.set_sun_curve(randf() * 50)
			q_ProceduralSky.set_sun_energy(randf() * 50)
			q_ProceduralSky.set_texture_size(randi() % ProceduralSky.TEXTURE_SIZE_MAX) # TextureSize
			
			if Autoload.WRONG_BUGS:
				q_ProceduralSky.set_sky_top_color(Color(randf(),randf(),randf(),randf()))
				q_ProceduralSky.set_sky_horizon_color(Color(randf(),randf(),randf(),randf()))
				q_ProceduralSky.set_sky_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sky_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_ground_bottom_color(Color(randf(),randf(),randf(),randf()))
				q_ProceduralSky.set_ground_horizon_color(Color(randf(),randf(),randf(),randf()))
				q_ProceduralSky.set_ground_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_ground_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sun_color(Color(randf(),randf(),randf(),randf()))
				q_ProceduralSky.set_sun_latitude(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sun_longitude(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sun_angle_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sun_angle_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sun_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_sun_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_ProceduralSky.set_texture_size(randi() % Autoload.RANGE - Autoload.RANGE / 2) # TextureSize

		else: #RANDI
			if randi() % 2 == 1:
				q_ProceduralSky.set_sky_top_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_ProceduralSky.set_sky_horizon_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_ProceduralSky.set_sky_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sky_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_ground_bottom_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_ProceduralSky.set_ground_horizon_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_ProceduralSky.set_ground_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_ground_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_latitude(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_longitude(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_angle_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_angle_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_curve(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_sun_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_ProceduralSky.set_texture_size(randi() % Autoload.RANGE - Autoload.RANGE / 2) # TextureSize
