extends Node2D

var q_ProceduralSkyMaterial : ProceduralSkyMaterial = ProceduralSkyMaterial.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ProceduralSkyMaterial,true)

func nodeFunction(q_ProceduralSkyMaterial : ProceduralSkyMaterial, can_reset : bool = false) -> void:
	
	if can_reset:
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_ProceduralSkyMaterial = ProceduralSkyMaterial.new()
## MISSING	if randi() % 2 == 1:
##		AutoResourcesSky.nodeFunction(q_ProceduralSkyMaterial)

	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_sky_top_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_sky_horizon_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_sky_curve(Autoload.get_float())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_sky_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_ground_bottom_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_ground_horizon_color(Autoload.get_color())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_ground_curve(Autoload.get_float())
	if randi() % 2 == 1:
		q_ProceduralSkyMaterial.set_ground_energy(Autoload.get_float())
#	if randi() % 2 == 1: #MISSING
#		q_ProceduralSkyMaterial.set_sun_color(Autoload.get_color())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_sun_latitude(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_sun_longitude(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_sun_angle_min(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_sun_angle_max(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_sun_curve(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_sun_energy(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_ProceduralSkyMaterial.set_texture_size(Autoload.get_int()) # TextureSize
